-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2023 at 03:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orders_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `customer_surname` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_firstname` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_address` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_postcode` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_suburb` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_email` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_mobile` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_allergy` varchar(100) NOT NULL DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_surname`, `customer_firstname`, `customer_address`, `customer_postcode`, `customer_suburb`, `customer_email`, `customer_mobile`, `customer_allergy`) VALUES
(1, 'Doe', 'John', '123 Main Street', '12345', 'Anytown', 'john.doe@example.com', '123-456-7890', 'None'),
(2, 'Smith', 'Jane', '456 Elm Street', '12345', 'Anytown', 'jane.smith@example.com', '987-654-3210', 'Nuts'),
(3, 'Jones', 'David', '789 Oak Street', '12345', 'Anytown', 'david.jones@example.com', '555-555-5555', 'Shellfish'),
(4, 'Williams', 'Mary', '1011 Maple Street', '12345', 'Anytown', 'mary.williams@example.com', '444-444-4444', 'Gluten'),
(5, 'Brown', 'Michael', '1213 Cedar Street', '12345', 'Anytown', 'michael.brown@example.com', '333-333-3333', 'Dairy'),
(6, 'Green', 'Susan', '1415 Birch Street', '12345', 'Anytown', 'susan.green@example.com', '222-222-2222', 'Eggs'),
(7, 'Miller', 'William', '1617 Ash Street', '12345', 'Anytown', 'william.miller@example.com', '111-111-1111', 'Soy'),
(8, 'Davis', 'Sarah', '1819 Hickory Street', '12345', 'Anytown', 'sarah.davis@example.com', '000-000-0000', 'Peanuts'),
(9, 'Garcia', 'James', '2021 Walnut Street', '12345', 'Anytown', 'james.garcia@example.com', '999-999-9999', 'Sesame'),
(10, 'Rodriguez', 'Patricia', '2223 Elm Street', '12345', 'Anytown', 'patricia.rodriguez@example.com', '888-888-8888', 'Fish');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `customer_id` int(20) NOT NULL,
  `staff_id` int(20) NOT NULL,
  `order_type` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `order_time` date NOT NULL,
  `order_date` date NOT NULL,
  `payment_id` int(11) NOT NULL,
  `item_no` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`customer_id`, `staff_id`, `order_type`, `order_time`, `order_date`, `payment_id`, `item_no`) VALUES
(1, 1, 'dine-in', '2023-10-02', '2023-10-02', 1, 1),
(2, 2, 'take-out', '2023-10-02', '2023-10-02', 2, 2),
(3, 3, 'delivery', '2023-10-02', '2023-10-02', 3, 3),
(4, 4, 'dine-in', '2023-10-02', '2023-10-02', 4, 4),
(5, 5, 'take-out', '2023-10-02', '2023-10-02', 5, 5),
(6, 6, 'delivery', '2023-10-02', '2023-10-02', 6, 6),
(7, 7, 'dine-in', '2023-10-02', '2023-10-02', 7, 7),
(8, 8, 'take-out', '2023-10-02', '2023-10-02', 8, 8),
(9, 9, 'delivery', '2023-10-02', '2023-10-02', 9, 9),
(10, 10, 'dine-in', '2023-10-02', '2023-10-02', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `item_no` int(20) NOT NULL,
  `item_type` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `item_name` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `item_quantity` varchar(100) NOT NULL DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`item_no`, `item_type`, `item_name`, `item_quantity`) VALUES
(1, 'Food', 'Pizza', '1'),
(2, 'Food', 'Burger', '1'),
(3, 'Food', 'Pasta', '1'),
(4, 'Drink', 'Coke', '1'),
(5, 'Drink', 'Sprite', '1'),
(6, 'Drink', 'Water', '1'),
(7, 'Dessert', 'Ice cream', '1'),
(8, 'Dessert', 'Cake', '1'),
(9, 'Dessert', 'Pie', '1'),
(10, 'Side', 'Fries', '1');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `outlet_id` int(20) NOT NULL,
  `outlet_suburb` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `outlet_phone` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `outlet_company_id` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `outlet_company_name` varchar(100) NOT NULL DEFAULT 'NOT NULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`outlet_id`, `outlet_suburb`, `outlet_phone`, `outlet_company_id`, `outlet_company_name`) VALUES
(1, 'Sydney CBD', '02 9283 1234', '1', 'Acme Corporation'),
(2, 'Melbourne CBD', '03 9321 4321', '2', 'XYZ Company'),
(3, 'Brisbane CBD', '07 3222 5432', '3', 'ABC Pty Ltd'),
(4, 'Perth CBD', '08 9444 6543', '4', 'DEF Ltd'),
(5, 'Adelaide CBD', '08 8777 7654', '5', 'GHI Pty Ltd'),
(6, 'Canberra CBD', '02 6262 8765', '6', 'JKL Corporation'),
(7, 'Darwin CBD', '08 8989 9876', '7', 'MNO Pty Ltd'),
(8, 'Hobart CBD', '03 6565 0987', '8', 'PQR Corporation'),
(9, 'Newcastle CBD', '02 4949 1987', '9', 'STU Pty Ltd'),
(10, 'Wollongong CBD', '02 4242 2987', '10', 'VWX Corporation');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `payment_type` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `payment_amount` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `payment_account_no` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `payment_bsb_no` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `payment_account_type` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `payment_amount`, `payment_account_no`, `payment_bsb_no`, `payment_account_type`, `customer_id`) VALUES
(1, 'Visa', '100', '1234567890', '123-456', 'Savings Account', 1),
(2, 'MasterCard', '200', '9876543210', '987-654', 'Credit Card', 2),
(3, 'American Express', '300', '0987654321', '098-765', 'Charge Card', 3),
(4, 'PayPal', '400', 'john.doe@example.com', '-553', 'Online Wallet', 4),
(5, 'Afterpay', '500', '1234567890', '333', 'Buy Now, Pay Later', 5),
(6, 'Zippay', '600', '9876543210', '333', 'Buy Now, Pay Later', 6),
(7, 'Klarna', '700', '0987654321', '333', 'Buy Now, Pay Later', 7),
(8, 'Cash', '800', '987654321', '333', 'Cash', 8),
(9, 'Cheque', '900', '1234567890', '333', 'Cheque', 9),
(10, 'EFTPOS', '1000', '9876543210', '333', 'EFTPOS', 10);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(20) NOT NULL,
  `staff_surname` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `staff_firstname` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `staff_email` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `staff_mobile` varchar(100) NOT NULL DEFAULT 'NOT NULL',
  `outlet_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_surname`, `staff_firstname`, `staff_email`, `staff_mobile`, `outlet_id`) VALUES
(1, 'Johnson', 'Thomas', 'thomas.johnson@example.com', '123-456-7890', 1),
(2, 'Williams', 'David', 'david.williams@example.com', '987-654-3210', 2),
(3, 'Brown', 'Michael', 'michael.brown@example.com', '555-555-5555', 3),
(4, 'Jones', 'Sarah', 'sarah.jones@example.com', '444-444-4444', 4),
(5, 'Miller', 'William', 'william.miller@example.com', '333-333-3333', 5),
(6, 'Davis', 'Susan', 'susan.davis@example.com', '222-222-2222', 6),
(7, 'Garcia', 'James', 'james.garcia@example.com', '111-111-1111', 7),
(8, 'Rodriguez', 'Patricia', 'patricia.rodriguez@example.com', '000-000-0000', 8),
(9, 'Wilson', 'Brian', 'brian.wilson@example.com', '999-999-9999', 9),
(10, 'Taylor', 'John', 'john.taylor@example.com', '888-888-8888', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`customer_id`,`staff_id`),
  ADD UNIQUE KEY `unique_payment` (`payment_id`),
  ADD UNIQUE KEY `item_no` (`item_no`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD UNIQUE KEY `item_no` (`item_no`) USING BTREE;

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_constraint` (`customer_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`) USING BTREE,
  ADD UNIQUE KEY `outlet_id` (`outlet_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `one_to_one_payment` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`item_no`) REFERENCES `order_item` (`item_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `customer_constraint` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`outlet_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
