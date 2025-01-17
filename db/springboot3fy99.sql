-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot3fy99
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615442363737 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-11 05:48:48',1,1,'提问1','回复1',1),(52,'2021-03-11 05:48:48',2,2,'提问2','回复2',2),(53,'2021-03-11 05:48:48',3,3,'提问3','回复3',3),(54,'2021-03-11 05:48:48',4,4,'提问4','回复4',4),(55,'2021-03-11 05:48:48',5,5,'提问5','回复5',5),(56,'2021-03-11 05:48:48',6,6,'提问6','回复6',6),(1615442261383,'2021-03-11 05:57:41',11,NULL,'你好',NULL,0),(1615442363736,'2021-03-11 05:59:23',11,1,NULL,'有什么能帮你的',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot3fy99/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot3fy99/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot3fy99/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (21,'2021-03-11 05:48:48','文章标题1','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian1.jpg','文章内容1','2021-03-11'),(22,'2021-03-11 05:48:48','文章标题2','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian2.jpg','文章内容2','2021-03-11'),(23,'2021-03-11 05:48:48','文章标题3','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian3.jpg','文章内容3','2021-03-11'),(24,'2021-03-11 05:48:48','文章标题4','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian4.jpg','文章内容4','2021-03-11'),(25,'2021-03-11 05:48:48','文章标题5','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian5.jpg','文章内容5','2021-03-11'),(26,'2021-03-11 05:48:48','文章标题6','http://localhost:8080/springboot3fy99/upload/gonggaoxinxi_tupian6.jpg','文章内容6','2021-03-11');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615442141679 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (61,'2021-03-11 05:48:48',1,'用户名1','留言内容1','回复内容1'),(62,'2021-03-11 05:48:48',2,'用户名2','留言内容2','回复内容2'),(63,'2021-03-11 05:48:48',3,'用户名3','留言内容3','回复内容3'),(64,'2021-03-11 05:48:48',4,'用户名4','留言内容4','回复内容4'),(65,'2021-03-11 05:48:48',5,'用户名5','留言内容5','回复内容5'),(66,'2021-03-11 05:48:48',6,'用户名6','留言内容6','回复内容6'),(1615442141678,'2021-03-11 05:55:41',11,'学生1','sdfsdgsdg','sdgg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','8jglsvien6xchl74fut9ev4f45ave0g3','2021-03-11 05:52:47','2021-03-11 06:57:53'),(2,11,'学生1','xuesheng','学生','wfd4a78n0imt01fcvbovf7zyfyh7ho7x','2021-03-11 05:53:58','2021-03-11 06:57:08');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 05:48:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) NOT NULL COMMENT '学生号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshenghao` (`xueshenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-11 05:48:48','学生1','123456','学生姓名1','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang1.jpg','女','13823888881','邮箱1'),(12,'2021-03-11 05:48:48','学生2','123456','学生姓名2','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang2.jpg','男','13823888882','邮箱2'),(13,'2021-03-11 05:48:48','学生3','123456','学生姓名3','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang3.jpg','男','13823888883','邮箱3'),(14,'2021-03-11 05:48:48','学生4','123456','学生姓名4','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang4.jpg','男','13823888884','邮箱4'),(15,'2021-03-11 05:48:48','学生5','123456','学生姓名5','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang5.jpg','男','13823888885','邮箱5'),(16,'2021-03-11 05:48:48','学生6','123456','学生姓名6','http://localhost:8080/springboot3fy99/upload/xuesheng_touxiang6.jpg','男','13823888886','邮箱6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishi`
--

DROP TABLE IF EXISTS `zixishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `peitaosheshi` varchar(200) DEFAULT NULL COMMENT '配套设施',
  `jiaoshixiangqing` longtext COMMENT '教室详情',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='自习室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishi`
--

LOCK TABLES `zixishi` WRITE;
/*!40000 ALTER TABLE `zixishi` DISABLE KEYS */;
INSERT INTO `zixishi` VALUES (41,'2021-03-11 05:48:48','名称1','http://localhost:8080/springboot3fy99/upload/zixishi_tupian1.jpg','位置1','配套设施1','教室详情1',20,'1,3,5,7,9,15'),(42,'2021-03-11 05:48:48','名称2','http://localhost:8080/springboot3fy99/upload/zixishi_tupian2.jpg','位置2','配套设施2','教室详情2',20,'1,3,5,7,9'),(43,'2021-03-11 05:48:48','名称3','http://localhost:8080/springboot3fy99/upload/zixishi_tupian3.jpg','位置3','配套设施3','教室详情3',20,'1,3,5,7,9'),(44,'2021-03-11 05:48:48','名称4','http://localhost:8080/springboot3fy99/upload/zixishi_tupian4.jpg','位置4','配套设施4','教室详情4',20,'1,3,5,7,9'),(45,'2021-03-11 05:48:48','名称5','http://localhost:8080/springboot3fy99/upload/zixishi_tupian5.jpg','位置5','配套设施5','教室详情5',20,'1,3,5,7,9'),(46,'2021-03-11 05:48:48','名称6','http://localhost:8080/springboot3fy99/upload/zixishi_tupian6.jpg','位置6','配套设施6','教室详情6',20,'1,3,5,7,9');
/*!40000 ALTER TABLE `zixishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuoweiyuding`
--

DROP TABLE IF EXISTS `zuoweiyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuoweiyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshenghao` varchar(200) DEFAULT NULL COMMENT '学生号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `shiyongshizhang` varchar(200) DEFAULT NULL COMMENT '使用时长',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615442131245 DEFAULT CHARSET=utf8 COMMENT='座位预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuoweiyuding`
--

LOCK TABLES `zuoweiyuding` WRITE;
/*!40000 ALTER TABLE `zuoweiyuding` DISABLE KEYS */;
INSERT INTO `zuoweiyuding` VALUES (31,'2021-03-11 05:48:48','学生号1','学生姓名1','名称1','座位号1','2021-03-11 13:48:48','使用时长1','是',''),(32,'2021-03-11 05:48:48','学生号2','学生姓名2','名称2','座位号2','2021-03-11 13:48:48','使用时长2','是',''),(33,'2021-03-11 05:48:48','学生号3','学生姓名3','名称3','座位号3','2021-03-11 13:48:48','使用时长3','是',''),(34,'2021-03-11 05:48:48','学生号4','学生姓名4','名称4','座位号4','2021-03-11 13:48:48','使用时长4','是',''),(35,'2021-03-11 05:48:48','学生号5','学生姓名5','名称5','座位号5','2021-03-11 13:48:48','使用时长5','是',''),(36,'2021-03-11 05:48:48','学生号6','学生姓名6','名称6','座位号6','2021-03-11 13:48:48','使用时长6','是',''),(1615442131244,'2021-03-11 05:55:30','学生1','学生姓名1','名称1','15号','2021-03-11 15:00:00','2小时','是',NULL);
/*!40000 ALTER TABLE `zuoweiyuding` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-12 15:05:11
