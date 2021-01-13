FROM adoptopenjdk:8-jdk-hotspot

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV CONFIG_SERVER_HOME /usr/local/configserver
RUN mkdir -p $CONFIG_SERVER_HOME
WORKDIR $CONFIG_SERVER_HOME
ADD target/configserver-1.0.jar configserver.jar

EXPOSE 10000
ENTRYPOINT ["java", "-jar", "configserver.jar"]
CMD ["profile"]

