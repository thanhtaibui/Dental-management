USE [PhongKhamNhaKhoa]
GO
/****** Object:  Table [dbo].[BACSI]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BACSI](
	[MaBS] [char](6) NOT NULL,
	[TenBS] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgSinh] [date] NULL,
	[SDT] [char](10) NULL,
	[Email] [char](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CaLam] [nvarchar](10) NULL,
	[MatKhau] [char](30) NULL,
	[MaPhong] [char](6) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BENHNHAN]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BENHNHAN](
	[MaBN] [char](6) NOT NULL,
	[TenBN] [nvarchar](50) NULL,
	[CMND] [char](12) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgSinh] [date] NULL,
	[SDT] [char](10) NULL,
	[BenhLy] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DICHVU]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DICHVU](
	[SoPhieuDV] [char](9) NULL,
	[MaDV] [char](6) NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDV] [char](6) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[Gia] [float] NULL,
	[MaLDV] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIDICHVU]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIDICHVU](
	[MaLDV] [char](6) NOT NULL,
	[TenLDV] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](6) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgSinh] [date] NULL,
	[SDT] [char](10) NULL,
	[Email] [char](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CaLam] [nvarchar](10) NULL,
	[MatKhau] [char](30) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDICHVU]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDICHVU](
	[SoPhieuDV] [char](9) NOT NULL,
	[ThanhTien] [float] NULL,
	[MaBS] [char](6) NULL,
	[SoPhieuKQ] [char](9) NULL,
	[MaBN] [char](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPhieuDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUKETQUA]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKETQUA](
	[SoPhieuKQ] [char](9) NOT NULL,
	[KetLuan] [nvarchar](100) NULL,
	[MaTK] [char](6) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoPhieuKQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGKHAM]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGKHAM](
	[MaPhong] [char](6) NOT NULL,
	[TenPhong] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHAM]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHAM](
	[MaTK] [char](6) NOT NULL,
	[NgayTK] [smalldatetime] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIEPDONBN]    Script Date: 30/11/2023 11:23:51 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIEPDONBN](
	[MaNV] [char](6) NULL,
	[MaBN] [char](6) NULL,
	[MaPhong] [char](6) NULL,
	[NgayKham] [smalldatetime] NULL,
	[TinhTrang] [nvarchar](12) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS01  ', N'Võ Lê Kim Tiễn', N'TP.HCM', CAST(N'2003-02-05' AS Date), N'0931814935', N'volekimtien@gmail.com                             ', N'Nam', N'Sáng', N'123                           ', N'P01   ', 1)
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS02  ', N'Tài họ bùi', N'Tây Ninh, dương minh châu', CAST(N'2003-10-14' AS Date), N'0912345678', N'buithanhtai@gmail.com                             ', N'Nam', N'Tối', N'taibui                        ', N'P01   ', 1)
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS03  ', N'Hồ Xuân Hương', N'Huế', CAST(N'2002-05-12' AS Date), N'0978111984', N'hoxuanhuong@gmail.com                             ', N'Nữ', N'Sáng', N'hoxuanhuong2002               ', N'P02   ', 1)
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS04  ', N'Hồ Đông Huy', N'Quy Nhơn', CAST(N'2003-03-20' AS Date), N'0912574524', N'hodonghuy@gmail.com                               ', N'Nam', N'Tối', N'*******                       ', N'P02   ', 1)
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS05  ', N'buitai12312312', N'dmc', CAST(N'1991-06-12' AS Date), N'0393515608', N'taibui@gmail.com                                  ', N'Nam', N'Sáng', N'*******                       ', N'P03   ', 1)
INSERT [dbo].[BACSI] ([MaBS], [TenBS], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [MaPhong], [TinhTrang]) VALUES (N'BS07  ', N'tiễn', N'hcm', CAST(N'1980-06-04' AS Date), N'0123123123', N'tien@gmail.com                                    ', N'Nam', N'Tối', N'*******                       ', N'P03   ', 0)
GO
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0001', N'Bùi Thành Tài', N'072203007911', N'Tây Ninh', CAST(N'2003-08-14' AS Date), N'0393515604', N'Tim mạch', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0002', N'Võ Lê Kim Tiễn', N'079203024252', N'TP.HCM', CAST(N'2022-02-10' AS Date), N'0931814935', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0003', N'Hồ Đông Huy', N'089798799709', N'Khánh Hoà', CAST(N'2020-02-11' AS Date), N'0988979822', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0004', N'Phú Qúy Bò Viên', N'076543123456', N'Hà Nội', CAST(N'2021-03-04' AS Date), N'0987654321', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0005', N'Sơn Tùng', N'099786541111', N'Thái Bình', CAST(N'2014-11-25' AS Date), N'0923456789', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0006', N'Nguyễn Thành Hưng', N'012345678912', N'TP. HCM', CAST(N'2021-11-25' AS Date), N'0923456789', N'tiểu đường', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0007', N'Nguyễn Văn An', N'012345678912', N'TP. HCM', CAST(N'2021-11-25' AS Date), N'0923456789', N'', N'Nữ')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0008', N'tiến', N'072203007911', N'ádasd', CAST(N'2010-06-18' AS Date), N'0935156082', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0009', N'đại việt', N'012312345687', N'hcm quận 8', CAST(N'2013-02-13' AS Date), N'0923123123', N'', N'Nữ')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0010', N'1239akjshdkasdasd', N'123123123123', N'ádasdasdasdasd', CAST(N'2020-06-30' AS Date), N'0935156072', N'', N'Nam')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0011', N'tao là huy khùng', N'012931231231', N'tạm ở hcm', CAST(N'2007-07-19' AS Date), N'0123123123', NULL, N'Nữ')
INSERT [dbo].[BENHNHAN] ([MaBN], [TenBN], [CMND], [DiaChi], [NgSinh], [SDT], [BenhLy], [GioiTinh]) VALUES (N'BN0012', N'tai123123', N'012312312312', N'taibui', CAST(N'2014-06-20' AS Date), N'0123123123', NULL, N'Nam')
GO
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123001', N'DV04  ', 5)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123001', N'DV06  ', 5)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123002', N'DV04  ', 1)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123002', N'DV02  ', 3)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123002', N'DV06  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123003', N'DV03  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123003', N'DV04  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123003', N'DV02  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123003', N'DV11  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123004', N'DV03  ', 4)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123004', N'DV06  ', 8)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123005', N'DV04  ', 10)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123005', N'DV05  ', 3)
INSERT [dbo].[CT_DICHVU] ([SoPhieuDV], [MaDV], [SoLuong]) VALUES (N'301123001', N'DV22  ', 1)
GO
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV01  ', N'IMPLANT OTEX', 8000000, N'LDV01 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV02  ', N'IMPLANT MEDITECH', 10000000, N'LDV01 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV03  ', N'IMPLANT KUWOTECH ', 16000000, N'LDV01 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV04  ', N'Niềng răng trong suốt Invisalign (đơn giản)', 55000000, N'LDV02 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV05  ', N'Niềng răng trong suốt Invisalign (phức tạp)', 120000000, N'LDV02 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV06  ', N'Hàm Trainer trẻ em	', 4000000, N'LDV02 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV07  ', N'Cạo vôi + đánh bóng mức độ 1', 500000, N'LDV03 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV08  ', N'Cạo vôi + đánh bóng mức độ 2 (vôi nhiều)	', 600000, N'LDV03 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV09  ', N'Khung kim loại thường	', 2000000, N'LDV04 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV10  ', N'Khung hợp Titan	', 3000000, N'LDV04 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV11  ', N'Lấy tủy răng sữa	', 200000, N'LDV05 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV12  ', N'Lấy tủy trâm tay', 400000, N'LDV05 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV13  ', N'Lấy tủy bằng máy	', 1000000, N'LDV05 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV14  ', N'Răng khôn hàm trên', 2000000, N'LDV06 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV15  ', N'Răng khôn hàm dưới', 4000000, N'LDV06 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV16  ', N'Nhổ răng sữa chích tê', 50000, N'LDV07 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV17  ', N'Nhổ răng không đau', 500000, N'LDV07 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV18  ', N'Tẩy trắng răng tại nhà', 1000000, N'LDV08 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV19  ', N'Tẩy trắng răng tại phòng khám	', 2400000, N'LDV08 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV20  ', N'Trám răng Composite (Mỹ)', 500000, N'LDV09 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV21  ', N'Đính hạt kim cương', 600000, N'LDV09 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV22  ', N'Đắp kẽ răng/ mặt răng/ thẩm mỹ	', 500000, N'LDV09 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV23  ', N'Chụp CT Conebeam', 0, N'LDV10 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV24  ', N'Chụp X-Quang', 0, N'LDV10 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV25  ', N'Khám và tư vấn	', 0, N'LDV10 ')
INSERT [dbo].[DICHVU] ([MaDV], [TenDV], [Gia], [MaLDV]) VALUES (N'DV26  ', N'tao test cho khứa tiễn', -123123100, N'LDV01 ')
GO
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV01 ', N'Cấy Ghép IMPLANT')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV02 ', N'Niềng Răng Chỉnh Nha')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV03 ', N'Cạo Vôi Răng')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV04 ', N'Tháo Lắp Hàm Giả')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV05 ', N'Nội Nha Chữa Tủy')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV06 ', N'Tiểu Phẫu Răng Khôn')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV07 ', N'Nhổ Răng Thường')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV08 ', N'Tẩy Trắng Răng')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV09 ', N'Trám Răng Thẩm Mỹ')
INSERT [dbo].[LOAIDICHVU] ([MaLDV], [TenLDV]) VALUES (N'LDV10 ', N'Dịch Vụ Miễn Phí')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [TinhTrang]) VALUES (N'NV01  ', N'Nguyễn Thành Hưng', N'Cai Lậy,Đồng Tháp', CAST(N'2003-04-14' AS Date), N'0948512333', N'nguyenthanhhung@gmail.com                         ', N'Nam', N'Sáng', N'*******                       ', 0)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [TinhTrang]) VALUES (N'NV02  ', N'Đặng Quốc Thuận', N'Tân An', CAST(N'2003-06-15' AS Date), N'0941541512', N'dangquocthuan@gmail.com                           ', N'Nam', N'Sáng', N'dangquocthuan2003             ', 1)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [NgSinh], [SDT], [Email], [GioiTinh], [CaLam], [MatKhau], [TinhTrang]) VALUES (N'NV03  ', N'Lê Thúy Diễm', N'Vũng Tàu', CAST(N'2001-02-01' AS Date), N'0971212963', N'lethuydiem@gmail.com                              ', N'Nữ', N'Tối', N'lethuydiem2001                ', 1)
GO
INSERT [dbo].[PHIEUDICHVU] ([SoPhieuDV], [ThanhTien], [MaBS], [SoPhieuKQ], [MaBN]) VALUES (N'301123001', 295500000, N'BS02  ', N'301123001', N'BN0009')
INSERT [dbo].[PHIEUDICHVU] ([SoPhieuDV], [ThanhTien], [MaBS], [SoPhieuKQ], [MaBN]) VALUES (N'301123002', 101000000, N'BS02  ', N'301123002', N'BN0002')
INSERT [dbo].[PHIEUDICHVU] ([SoPhieuDV], [ThanhTien], [MaBS], [SoPhieuKQ], [MaBN]) VALUES (N'301123003', 324800000, N'BS02  ', N'301123003', N'BN0004')
INSERT [dbo].[PHIEUDICHVU] ([SoPhieuDV], [ThanhTien], [MaBS], [SoPhieuKQ], [MaBN]) VALUES (N'301123004', 96000000, N'BS02  ', N'301123004', N'BN0002')
INSERT [dbo].[PHIEUDICHVU] ([SoPhieuDV], [ThanhTien], [MaBS], [SoPhieuKQ], [MaBN]) VALUES (N'301123005', 910000000, N'BS02  ', N'301123005', N'BN0010')
GO
INSERT [dbo].[PHIEUKETQUA] ([SoPhieuKQ], [KetLuan], [MaTK], [TinhTrang]) VALUES (N'301123001', N'', N'TK001 ', 1)
INSERT [dbo].[PHIEUKETQUA] ([SoPhieuKQ], [KetLuan], [MaTK], [TinhTrang]) VALUES (N'301123002', N'', NULL, 1)
INSERT [dbo].[PHIEUKETQUA] ([SoPhieuKQ], [KetLuan], [MaTK], [TinhTrang]) VALUES (N'301123003', N'', N'TK002 ', 0)
INSERT [dbo].[PHIEUKETQUA] ([SoPhieuKQ], [KetLuan], [MaTK], [TinhTrang]) VALUES (N'301123004', N'', NULL, 0)
INSERT [dbo].[PHIEUKETQUA] ([SoPhieuKQ], [KetLuan], [MaTK], [TinhTrang]) VALUES (N'301123005', N'', N'TK003 ', 0)
GO
INSERT [dbo].[PHONGKHAM] ([MaPhong], [TenPhong]) VALUES (N'P01   ', N'Phòng khám 1')
INSERT [dbo].[PHONGKHAM] ([MaPhong], [TenPhong]) VALUES (N'P02   ', N'Phòng khám 2')
INSERT [dbo].[PHONGKHAM] ([MaPhong], [TenPhong]) VALUES (N'P03   ', N'Phòng khám 3')
INSERT [dbo].[PHONGKHAM] ([MaPhong], [TenPhong]) VALUES (N'P04   ', N'Phòng khám 4')
INSERT [dbo].[PHONGKHAM] ([MaPhong], [TenPhong]) VALUES (N'P05   ', N'phòng 5')
GO
INSERT [dbo].[TAIKHAM] ([MaTK], [NgayTK], [TinhTrang]) VALUES (N'TK001 ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TAIKHAM] ([MaTK], [NgayTK], [TinhTrang]) VALUES (N'TK002 ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[TAIKHAM] ([MaTK], [NgayTK], [TinhTrang]) VALUES (N'TK003 ', CAST(N'2023-12-09T00:00:00' AS SmallDateTime), 1)
GO
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV01  ', N'BN0009', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Đã Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV01  ', N'BN0002', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Đã Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV01  ', N'BN0003', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV01  ', N'BN0004', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Đã Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV02  ', N'BN0010', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Đã Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV02  ', N'BN0001', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Khám')
INSERT [dbo].[TIEPDONBN] ([MaNV], [MaBN], [MaPhong], [NgayKham], [TinhTrang]) VALUES (N'NV02  ', N'BN0005', N'P01   ', CAST(N'2023-11-30T00:00:00' AS SmallDateTime), N'Tái Khám')
GO
ALTER TABLE [dbo].[BACSI]  WITH CHECK ADD  CONSTRAINT [FK_BS_PK] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONGKHAM] ([MaPhong])
GO
ALTER TABLE [dbo].[BACSI] CHECK CONSTRAINT [FK_BS_PK]
GO
ALTER TABLE [dbo].[CT_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CTDV_DV] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DICHVU] ([MaDV])
GO
ALTER TABLE [dbo].[CT_DICHVU] CHECK CONSTRAINT [FK_CTDV_DV]
GO
ALTER TABLE [dbo].[CT_DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_CTDV_PDV] FOREIGN KEY([SoPhieuDV])
REFERENCES [dbo].[PHIEUDICHVU] ([SoPhieuDV])
GO
ALTER TABLE [dbo].[CT_DICHVU] CHECK CONSTRAINT [FK_CTDV_PDV]
GO
ALTER TABLE [dbo].[DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DV_LDV] FOREIGN KEY([MaLDV])
REFERENCES [dbo].[LOAIDICHVU] ([MaLDV])
GO
ALTER TABLE [dbo].[DICHVU] CHECK CONSTRAINT [FK_DV_LDV]
GO
ALTER TABLE [dbo].[PHIEUDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_PDV_BN] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BENHNHAN] ([MaBN])
GO
ALTER TABLE [dbo].[PHIEUDICHVU] CHECK CONSTRAINT [FK_PDV_BN]
GO
ALTER TABLE [dbo].[PHIEUDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_PDV_BS] FOREIGN KEY([MaBS])
REFERENCES [dbo].[BACSI] ([MaBS])
GO
ALTER TABLE [dbo].[PHIEUDICHVU] CHECK CONSTRAINT [FK_PDV_BS]
GO
ALTER TABLE [dbo].[PHIEUDICHVU]  WITH CHECK ADD  CONSTRAINT [FK_PDV_PKQ] FOREIGN KEY([SoPhieuKQ])
REFERENCES [dbo].[PHIEUKETQUA] ([SoPhieuKQ])
GO
ALTER TABLE [dbo].[PHIEUDICHVU] CHECK CONSTRAINT [FK_PDV_PKQ]
GO
ALTER TABLE [dbo].[PHIEUKETQUA]  WITH CHECK ADD  CONSTRAINT [FK_PKQ_TK] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TAIKHAM] ([MaTK])
GO
ALTER TABLE [dbo].[PHIEUKETQUA] CHECK CONSTRAINT [FK_PKQ_TK]
GO
ALTER TABLE [dbo].[TIEPDONBN]  WITH CHECK ADD  CONSTRAINT [FK_TDBN_BN] FOREIGN KEY([MaBN])
REFERENCES [dbo].[BENHNHAN] ([MaBN])
GO
ALTER TABLE [dbo].[TIEPDONBN] CHECK CONSTRAINT [FK_TDBN_BN]
GO
ALTER TABLE [dbo].[TIEPDONBN]  WITH CHECK ADD  CONSTRAINT [FK_TDBN_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[TIEPDONBN] CHECK CONSTRAINT [FK_TDBN_NV]
GO
ALTER TABLE [dbo].[TIEPDONBN]  WITH CHECK ADD  CONSTRAINT [FK_TDBN_PK] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONGKHAM] ([MaPhong])
GO
ALTER TABLE [dbo].[TIEPDONBN] CHECK CONSTRAINT [FK_TDBN_PK]
GO
