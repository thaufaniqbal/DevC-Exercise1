-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 08:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dapurbunda`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`, `username`) VALUES
(40, 'admin@gmail.com', '123', 'admin'),
(41, 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(0, 'Appetizer'),
(1, 'Makanan'),
(13, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(10) NOT NULL,
  `nama_kota` varchar(30) NOT NULL,
  `tarif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'Jakarta', 10000),
(2, 'Bogor', 8000),
(3, 'Depok', 9000),
(4, 'Tanggerang', 10000),
(5, 'Bekasi', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email_pelanggan` varchar(50) NOT NULL,
  `telepon_pelanggan` varchar(50) NOT NULL,
  `password_pelanggan` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `email_pelanggan`, `telepon_pelanggan`, `password_pelanggan`, `alamat`) VALUES
(10, 'Afifah Nur Sakinah', 'afifahsakinah@gmail.com', '089599559418', '123', 'Depok');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(24, 58, 'arfita', 'bni', 30000, '2022-07-02', '20220702172637logo.jpg'),
(25, 59, 'Afifah Nur Sakinah', 'BCA', 1, '2022-08-05', '2022080515403320210907151057bukti.jpg'),
(26, 66, 'Afifah Nur Sakinah', 'BCA', 69000, '2022-08-05', '2022080517355120210912184330bukti.jpg'),
(27, 62, '', '', 0, '2022-08-05', '20220805175622'),
(28, 64, 'asdasd', 'asdasd', 1214124, '2022-08-05', '2022080517574520210912184626bukti.jpg'),
(29, 68, 'Afifah Nur Sakinah', 'BCA', 39000, '2022-08-05', '2022080518021320210907151057bukti.jpg'),
(30, 71, 'Afifah Nur Sakinah', 'BCA', 21000, '2022-08-05', '2022080518484720210907151057bukti.jpg'),
(31, 76, 'Afifah Nur Sakinah', 'BCA', 54000, '2022-08-06', '2022080605565920210912184330bukti.jpg'),
(32, 74, 'Afifah Nur Sakinah', 'BCA', 20000, '2022-08-06', '2022080608543320210912184430bukti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(10) NOT NULL,
  `jenis_pembayaran` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `status_pesanan` varchar(100) NOT NULL DEFAULT 'Pending',
  `nama_kota` varchar(30) NOT NULL,
  `tarif` int(12) NOT NULL,
  `alamat_pengiriman` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `jenis_pembayaran`, `tanggal`, `total_pembelian`, `status_pesanan`, `nama_kota`, `tarif`, `alamat_pengiriman`) VALUES
(70, 10, 3, 'tunai', '2022-08-05', 21000, 'selesai', '', 9000, 'asd'),
(71, 10, 3, 'nontunai', '2022-08-05', 21000, 'selesai', '', 9000, 'dsa'),
(72, 10, 2, 'tunai', '2022-08-05', 68000, 'selesai', '', 8000, 'bhgh'),
(73, 10, 2, 'tunai', '2022-08-05', 20000, 'selesai', '', 8000, 'asd'),
(74, 10, 2, 'nontunai', '2022-08-05', 20000, 'selesai', '', 8000, 'asd'),
(75, 10, 3, 'tunai', '2022-08-06', 69000, 'selesai', '', 9000, 'depok'),
(76, 10, 3, 'nontunai', '2022-08-06', 54000, 'selesai', '', 9000, 'depok'),
(77, 10, 2, 'tunai', '2022-08-06', 53000, 'selesai', '', 8000, 'bogor'),
(78, 10, 3, 'tunai', '2022-08-06', 141000, 'diproses', '', 9000, 'Depok 2 Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_ongkir` int(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `subharga` int(11) NOT NULL,
  `berat` int(10) NOT NULL,
  `subberat` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `id_ongkir`, `jumlah`, `nama`, `harga`, `subharga`, `berat`, `subberat`) VALUES
(62, 58, 62, 0, 1, 'Wishkas Adult 1+', 30000, 30000, 0, 0),
(63, 59, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(64, 60, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(65, 61, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(66, 62, 69, 0, 2, 'Pizza', 60000, 120000, 0, 0),
(67, 63, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(68, 64, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(69, 65, 70, 0, 2, 'Sweet Tea', 12000, 24000, 0, 0),
(70, 66, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(71, 67, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(72, 68, 68, 0, 1, 'Cheese Stick', 30000, 30000, 0, 0),
(73, 0, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(74, 0, 70, 0, 2, 'Sweet Tea', 12000, 24000, 0, 0),
(75, 69, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(76, 0, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(77, 0, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(78, 0, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(79, 0, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(80, 70, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(81, 71, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(82, 72, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(83, 73, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(84, 74, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(85, 75, 69, 0, 1, 'Pizza', 60000, 60000, 0, 0),
(86, 76, 71, 0, 1, 'Sate', 45000, 45000, 0, 0),
(87, 77, 71, 0, 1, 'Sate', 45000, 45000, 0, 0),
(88, 78, 70, 0, 1, 'Sweet Tea', 12000, 12000, 0, 0),
(89, 78, 69, 0, 2, 'Pizza', 60000, 120000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `nama_produk` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok_produk` int(5) NOT NULL,
  `berat_produk` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `gambar`, `nama_produk`, `harga`, `deskripsi`, `stok_produk`, `berat_produk`) VALUES
(68, 1, 'cheesestik_ap.jpg', 'Cheese Stick', 30000, 'Cheese Stick merupakan kudapan yang terbuat dari bahan utama keju yang dibalut dengan tepung roti yang gurih. Kudapan ini cocok untuk menemani waktu bersantai kamu', 19, 0),
(69, 1, 'pizza_mu.jpg', 'Pizza', 60000, 'Pizza merupakan roti berbentuk bulat pipih dengan diameter 30 cm yang dipanggang dalam oven dan biasanya disiram saus tomat serta keju dan dengan makanan tambahan topping lainnya.', 7, 0),
(70, 13, 'teh_mnm.jpg', 'Sweet Tea', 12000, 'Teh manis adalah minuman yang terbuat dari larutan teh yang diberi pemanis. Minuman ini siap untuk menyegarkan hari kamu.', 5, 0),
(71, 1, 'Sate.jpg', 'Sate', 45000, 'Sate Ayam dibuat dari daging ayam yang dimasak dengan cara dipanggang dengan menggunakan arang dan disajikan dengan pilihan bumbu kacang atau bumbu kecap.', 18, 0),
(72, 0, 'pancake.jpg', 'Pancake', 30000, 'Pancake adalah kue bulat, tipis, dan datar, yang dibuat dari terigu, telur ayam, gula, susu, bahan-bahan dicampur dengan air membentuk adonan kental dan dimasak diatas wajan panas.', 20, 0),
(73, 1, 'chicken_salted_egg.jpg', 'Chicken Salted Egg', 55000, 'Salted egg Chicken merupakan makanan yang terbuat dari potongan daging ayam dengan campuran saus telur asin.', 20, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
