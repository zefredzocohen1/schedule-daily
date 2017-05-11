/*
Navicat MySQL Data Transfer

Source Server         : homstead
Source Server Version : 50712
Source Host           : localhost:33060
Source Database       : chatbot

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-02-08 13:06:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for channel_details
-- ----------------------------
DROP TABLE IF EXISTS `channel_details`;
CREATE TABLE `channel_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `test_link` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `published` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel_details
-- ----------------------------
INSERT INTO `channel_details` VALUES ('1', '1', 'page1', '1', 'https://www.messenger.com/t/1111111111', '1', '1', '2017-02-06 08:48:53', '2017-02-08 06:05:50', null);
INSERT INTO `channel_details` VALUES ('2', '2', 'page2', '1', 'https://www.messenger.com/t/222222', '2', '2', '2017-02-06 06:15:04', '2017-02-07 03:22:40', null);

-- ----------------------------
-- Table structure for channel_facebooks
-- ----------------------------
DROP TABLE IF EXISTS `channel_facebooks`;
CREATE TABLE `channel_facebooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `fb_page_id` varchar(255) DEFAULT NULL,
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fb_app_secret` varchar(255) DEFAULT NULL,
  `fb_page_access_token` varchar(255) DEFAULT NULL,
  `validation_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel_facebooks
-- ----------------------------
INSERT INTO `channel_facebooks` VALUES ('1', '2', '1111111111', '33333333333', '2222222222222', '4444444444444', '1111111111$4T1MW3EiIB2VwxMxl8ACNuqZIm0aVB/A2wiQYsrbeRnN0GcQs6zxG', '2017-02-06 08:48:53', '2017-02-08 03:43:54', null);
INSERT INTO `channel_facebooks` VALUES ('2', '1', '2222222222', '1111111111', '222222222222', '333333333333333', '$2222T1MW3EiIB2VwxMxl8ACNuqZIm0aVB/A2wiQYsrbeRnN0GcQs6zxG', '2017-02-06 08:48:53', '2017-02-07 08:09:15', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('3', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('4', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` time DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@wevnal.co.jp', '$2y$10$zhxYyezfjm5qbPoOi9noqOvROY4pcjphTf8X.MItfAvwY.XyAAJpu', 'http://miyatsu.vn', 'Miyatsu111', '2', 'dHU73XX8Z1wl6p98AUFhosInlkDzY6b2bHkejzm2VDtX7gfx74pC9yqwUF23', null, null, '2017-02-08 03:43:57');
INSERT INTO `users` VALUES ('2', 'client', 'client@wevnal.co.jp', '$2y$10$HIVSlXN438XEyjV2ib6bHOH4T3Cv4I34I5gDYoi26qguzM6o26OrS', 'http://miyatsu.vn', 'Miyatsu', '1', 'DkSBaSaW3lp55cMKt5gcna9kj1z4CHODOrvKO7wdIlmehQxDCNIfWadkTzrz', null, null, '2017-02-08 03:09:29');
