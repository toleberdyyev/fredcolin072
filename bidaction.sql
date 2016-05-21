-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 21 2016 г., 20:02
-- Версия сервера: 5.5.47-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `bidaction`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_orders`
--

CREATE TABLE IF NOT EXISTS `admin_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `qt` varchar(200) NOT NULL,
  `f1` varchar(200) NOT NULL,
  `f2` varchar(200) NOT NULL,
  `f3` varchar(200) NOT NULL,
  `author` varchar(150) NOT NULL,
  `checked` int(11) NOT NULL,
  `level` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `admin_orders`
--

INSERT INTO `admin_orders` (`id`, `question`, `qt`, `f1`, `f2`, `f3`, `author`, `checked`, `level`) VALUES
(14, '2+2', '4', '2', '3', '5', 'toleberdyyev', 1, 'easy'),
(15, 'what is the name of Admin ?', 'Alisher', 'Aibar', 'Aibar', 'ELzhan LORD', 'toleberdyyev', 1, 'easy'),
(19, 'what is not of world apple?', 'New York'' apple', 'Newton''s apple', 'Newton''s apple', 'Adema''s apple', 'toleberdyyev', 1, 'normal'),
(20, '(n!+2)/15   ; n=5', '8', '9', '9', '5', 'toleberdyyev', 1, 'easy'),
(23, 'What Nassyrkhan loves', 'Apple', 'Watermelon', 'Watermelon', 'Banana', 'toleberdyyev', 1, 'easy'),
(24, 'When Apple Inc. was founded ?', '1976', '1987', '1972', '1973', 'toleberdyyev', 1, 'hard'),
(26, 'A ,&amp;, B seat on the street . A goes on from street and B is lot from the the street.\r\nWho stayed on the street ?', '&amp;', 'B', 'B', 'AND', 'toleberdyyev', 1, 'hard'),
(28, 'What is the power of two 2 ??', '4', '8', '8', '16', 'Teacher', 1, 'easy'),
(29, 'What is root of ''16''', '4', '5', '5', '2', 'toleberdyyev', 1, 'easy'),
(30, 'dick length', '100a', '123', '123', '232', 'toleberdyyev', 1, 'hard'),
(31, 'Who jumped for 10 meters !?', 'Bon Bomin', 'Usama Ben Laden', 'Usama Ben Laden', 'Usein Bold', 'toleberdyyev', 1, 'normal');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(100) NOT NULL,
  `login` varchar(50) NOT NULL,
  `p_text` varchar(456) NOT NULL,
  `p_date` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `user`, `login`, `p_text`, `p_date`, `photo`) VALUES
(11, 1, 'toleberdyyev', 'ÑÐµÐ³Ð¾Ð´Ð½Ñ Ð¼Ñ‹ Ð½Ð° HackDay 2016 Ð²Ñ€ÑƒÑ‡ÐµÐ½Ð¸Ðµ )) \r\nÐºÐ¾Ñ€Ð¾Ñ‡Ðµ Ð¼Ñ‹ Ñ‚Ð°Ðº ÑÐµÐ±Ðµ , Ð²Ñ‹ÑÑ‚ÑƒÐ¿Ð¸Ð»Ð¸  Ð½Ð°Ð´ÐµÑŽÑÑŒ Ñ‡Ñ‚Ð¾ Ð½Ð°Ð¼ Ñ…Ð¾Ñ‚Ñ Ð±Ñ‹ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ñ‹ Ð´Ð°Ð´ÑƒÑ‚ ) :) ', 'Tue 10.05.16 1:34 pm ', 'uploads/1.gif'),
(13, 5, 'kackelenec01', 'moi pervii post...\r\nchto skazat vozmojno ya segonya bil plohim no eto mne nrarvitsya :) Aliw rodnii creatil mne akk \r\n', 'May 2, 2016 6:43 pm ', 'uploads/5.jpg'),
(21, 7, 'ft9alikhan', 'Hello boys and girls my name is Fat Lip. And this is my friend Salmony Salmon. Today I gotta teach you some fun facts about a salmon ...\r\n', 'May 12, 2016 6:25 am ', 'user_image/avatar.png'),
(23, 13, 'Teacher', 'asdaasdasdasdasdasd', 'Sun 15.05.16 11:16 am ', 'uploads/13.png');

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(150) NOT NULL,
  `question` varchar(1500) NOT NULL,
  `qt` varchar(150) NOT NULL,
  `f1` varchar(150) NOT NULL,
  `f2` varchar(150) NOT NULL,
  `f3` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `surname` varchar(50) NOT NULL,
  `login` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(100) NOT NULL,
  `photo_back` varchar(1000) NOT NULL,
  `online_status` varchar(10) NOT NULL,
  `hacked_user` varchar(100) NOT NULL,
  `roots` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `login`, `email`, `password`, `age`, `phone`, `city`, `photo`, `photo_back`, `online_status`, `hacked_user`, `roots`) VALUES
(1, 'Alisher', 'Toleshka', 'toleberdyyev', 'fredcolin079@gmail.com', '123123Aa', '1997-11-04', '87755011050', 'Ð¡ÐµÐ¼ÐµÐ¹', 'uploads/1.gif', 'uploads/1_back.gif', 'online', '', 1),
(2, 'Sultan', 'Zhaxylykov', 'Sula', 'sultan.zhaksylykov@gmail.com', '123123Aa', '1996-02-19', '87752273768', 'ÐÐºÑ‚Ð¾Ð±Ðµ', 'uploads/2.gif', 'uploads/2_back.jpg', 'online', '', 0),
(3, 'Abat', 'Zhussupkaliev', 'Belikefun', 'Zhusupkaliev.abat@gmail.com', '123123Aa', '1996-04-03', '87078817779', 'ÐÐºÑ‚Ð¾Ð±Ðµ', 'uploads/3.jpg', 'uploads/3_back.jpg', 'ofline', '', 0),
(4, 'Saken', 'Saneoman', 'Saken', 'saken@gmail.com', '123123Aa', '2016-04-26', '87750150615', 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 'user_image/avatar.png', 'uploads/4_back.jpg', 'online', '', 0),
(5, 'Erassyl', 'Halyk', 'kackelenec01', 'aha_aha001@mail.ru', 'Halyk123', '1998-04-08', '87073000808', 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 'uploads/5.jpg', 'uploads/5_back.jpg', 'online', '', 0),
(6, 'Vasya', 'Pupkin', 'Vasya', 'Vasya@gmail.com', '123123Aa', '1997-11-04', '87755011050', 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 'uploads/6.jpg', 'uploads/6_back.gif', 'online', '', 0),
(7, 'Alikhan', 'Mynbayev', 'ft9alikhan', 'alikhan34_9@mail.ru', '123123Aa', '1997-10-19', '+77085524094', 'ÐšÐ°Ñ€Ð°Ð³Ð°Ð½Ð´Ð°', 'user_image/avatar.png', 'user_image/ava_back.png', 'ofline', '', 0),
(8, 'Ð•Ð»Ð¶Ð°Ð½', 'ÐšÐ°Ð»Ð¼ÑƒÑ€Ð·Ð°ÐµÐ²', 'sosni_sarik', 'kalmurzaev.elzhan@mail.ru', 'Qwerty123', '1997-08-29', '+77017505007', 'Ð¨Ñ‹Ð¼ÐºÐµÐ½Ñ‚', 'user_image/avatar.png', 'user_image/ava_back.png', 'ofline', '', 0),
(9, 'Ansar', 'Maksat', 'GansarXD', 'abu8988@gmail.com', 'Ansar821996', '1996-12-29', '+77771381677', 'Ð¡ÐµÐ¼ÐµÐ¹', 'uploads/9.jpg', 'uploads/9_back.jpg', 'ofline', '', 0),
(10, 'Temirlan', 'Nurmakhanov', 'D1vin3', 'd1vin3@gmail.com', '123456tT', '1997-11-20', '+77085524094', 'ÐšÐ°Ñ€Ð°Ð³Ð°Ð½Ð´Ð°', 'user_image/avatar.png', 'user_image/ava_back.png', 'online', '', 0),
(11, 'asd', 'asd', 'asd0089', 'asd089@gmail.com', '123123Aa', '9197-11-04', '8565686545', 'Atyrau', 'user_image/avatar.png', 'user_image/ava_back.png', '0', '', 0),
(12, 'Roman', 'Yurchenko', 'LuckyTyper', 'aldoran_97@mail.u', 'Romapoma123', '2016-05-18', '87007007070', 'Almaty', 'user_image/avatar.png', 'user_image/ava_back.png', 'ofline', '', 0),
(13, 'Teacher', 'teach', 'Teacher', 'Teacher@gmail.com', '123123Aa', '1997-11-04', '86486565848', 'Almaty', 'uploads/13.png', 'uploads/13_back.jpg', 'ofline', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
