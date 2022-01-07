; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_add_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_stats.c_ocrdma_add_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ocrdma_dev*, i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ocrdma_dbgfs_dir = common dso_local global i32 0, align 4
@OCRDMA_RSRC_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"resource_stats\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@ocrdma_dbg_ops = common dso_local global i32 0, align 4
@OCRDMA_RXSTATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rx_stats\00", align 1
@OCRDMA_WQESTATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wqe_stats\00", align 1
@OCRDMA_TXSTATS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"tx_stats\00", align 1
@OCRDMA_DB_ERRSTATS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"db_err_stats\00", align 1
@OCRDMA_TXQP_ERRSTATS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"tx_qp_err_stats\00", align 1
@OCRDMA_RXQP_ERRSTATS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"rx_qp_err_stats\00", align 1
@OCRDMA_TX_DBG_STATS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"tx_dbg_stats\00", align 1
@OCRDMA_RX_DBG_STATS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"rx_dbg_stats\00", align 1
@OCRDMA_DRV_STATS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"driver_dbg_stats\00", align 1
@OCRDMA_RESET_STATS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"reset_stats\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_add_port_stats(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %4 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %4, i32 0, i32 12
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load i32, i32* @ocrdma_dbgfs_dir, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %182

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_name(%struct.pci_dev* %12)
  %14 = load i32, i32* @ocrdma_dbgfs_dir, align 4
  %15 = call i32 @debugfs_create_dir(i32 %13, i32 %14)
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @OCRDMA_RSRC_STATS, align 4
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.ocrdma_dev* %22, %struct.ocrdma_dev** %25, align 8
  %26 = load i32, i32* @S_IRUSR, align 4
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 11
  %32 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, %struct.TYPE_4__* %31, i32* @ocrdma_dbg_ops)
  %33 = load i32, i32* @OCRDMA_RXSTATS, align 4
  %34 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %35 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %34, i32 0, i32 10
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %38 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %39 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %38, i32 0, i32 10
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.ocrdma_dev* %37, %struct.ocrdma_dev** %40, align 8
  %41 = load i32, i32* @S_IRUSR, align 4
  %42 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %43 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 10
  %47 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, %struct.TYPE_4__* %46, i32* @ocrdma_dbg_ops)
  %48 = load i32, i32* @OCRDMA_WQESTATS, align 4
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %54 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %53, i32 0, i32 9
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.ocrdma_dev* %52, %struct.ocrdma_dev** %55, align 8
  %56 = load i32, i32* @S_IRUSR, align 4
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %58 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 9
  %62 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59, %struct.TYPE_4__* %61, i32* @ocrdma_dbg_ops)
  %63 = load i32, i32* @OCRDMA_TXSTATS, align 4
  %64 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %65 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %68 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %69 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store %struct.ocrdma_dev* %67, %struct.ocrdma_dev** %70, align 8
  %71 = load i32, i32* @S_IRUSR, align 4
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %73 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %76 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %75, i32 0, i32 8
  %77 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %74, %struct.TYPE_4__* %76, i32* @ocrdma_dbg_ops)
  %78 = load i32, i32* @OCRDMA_DB_ERRSTATS, align 4
  %79 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %80 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %83 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %84 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.ocrdma_dev* %82, %struct.ocrdma_dev** %85, align 8
  %86 = load i32, i32* @S_IRUSR, align 4
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %91 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %90, i32 0, i32 7
  %92 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %89, %struct.TYPE_4__* %91, i32* @ocrdma_dbg_ops)
  %93 = load i32, i32* @OCRDMA_TXQP_ERRSTATS, align 4
  %94 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %95 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  %97 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %98 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %99 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store %struct.ocrdma_dev* %97, %struct.ocrdma_dev** %100, align 8
  %101 = load i32, i32* @S_IRUSR, align 4
  %102 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %103 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %106 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %105, i32 0, i32 6
  %107 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %104, %struct.TYPE_4__* %106, i32* @ocrdma_dbg_ops)
  %108 = load i32, i32* @OCRDMA_RXQP_ERRSTATS, align 4
  %109 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %110 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 8
  %112 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %113 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %114 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store %struct.ocrdma_dev* %112, %struct.ocrdma_dev** %115, align 8
  %116 = load i32, i32* @S_IRUSR, align 4
  %117 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %118 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %121 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %120, i32 0, i32 5
  %122 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %119, %struct.TYPE_4__* %121, i32* @ocrdma_dbg_ops)
  %123 = load i32, i32* @OCRDMA_TX_DBG_STATS, align 4
  %124 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %125 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %128 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %129 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store %struct.ocrdma_dev* %127, %struct.ocrdma_dev** %130, align 8
  %131 = load i32, i32* @S_IRUSR, align 4
  %132 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %133 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %136 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %135, i32 0, i32 4
  %137 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32 %134, %struct.TYPE_4__* %136, i32* @ocrdma_dbg_ops)
  %138 = load i32, i32* @OCRDMA_RX_DBG_STATS, align 4
  %139 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %140 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  %142 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %143 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %144 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store %struct.ocrdma_dev* %142, %struct.ocrdma_dev** %145, align 8
  %146 = load i32, i32* @S_IRUSR, align 4
  %147 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %148 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %151 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %150, i32 0, i32 3
  %152 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %146, i32 %149, %struct.TYPE_4__* %151, i32* @ocrdma_dbg_ops)
  %153 = load i32, i32* @OCRDMA_DRV_STATS, align 4
  %154 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %155 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 8
  %157 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %158 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %159 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store %struct.ocrdma_dev* %157, %struct.ocrdma_dev** %160, align 8
  %161 = load i32, i32* @S_IRUSR, align 4
  %162 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %163 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %166 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %165, i32 0, i32 2
  %167 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %161, i32 %164, %struct.TYPE_4__* %166, i32* @ocrdma_dbg_ops)
  %168 = load i32, i32* @OCRDMA_RESET_STATS, align 4
  %169 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %170 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 8
  %172 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %173 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %174 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store %struct.ocrdma_dev* %172, %struct.ocrdma_dev** %175, align 8
  %176 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %177 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %180 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %179, i32 0, i32 0
  %181 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 128, i32 %178, %struct.TYPE_4__* %180, i32* @ocrdma_dbg_ops)
  br label %182

182:                                              ; preds = %11, %10
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
