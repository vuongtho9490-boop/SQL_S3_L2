create database QuanLyThuVienSach;
use QuanLyThuVienSach;
create table books(
book_id varchar (10)primary key,
book_name varchar (100) not null
);
create table readers(
reader_id varchar(10)primary key,
reader_name varchar (100) not null,
email varchar (100) not null,
phone varchar (10) not null
);
create table borrowings(
borrowing_id int auto_increment primary key,
book_id varchar (10) not null,
reader_id varchar(10) not null,
borrow_date date,
return_date date,
foreign key (book_id) references books(book_id),
foreign key(reader_id) references readers(reader_id)
);
alter table borrowings
modify borrow_date date not null;
