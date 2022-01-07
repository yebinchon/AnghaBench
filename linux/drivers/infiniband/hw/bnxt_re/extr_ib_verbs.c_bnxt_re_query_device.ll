; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.bnxt_re_dev = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.bnxt_qplib_dev_attr }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_qplib_dev_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BNXT_RE_MAX_MR_SIZE = common dso_local global i32 0, align 4
@BNXT_RE_PAGE_SIZE_4K = common dso_local global i32 0, align 4
@BNXT_RE_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@IB_DEVICE_CURR_QP_STATE_MOD = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4
@IB_DEVICE_RESIZE_MAX_WR = common dso_local global i32 0, align 4
@IB_DEVICE_PORT_ACTIVE_EVENT = common dso_local global i32 0, align 4
@IB_DEVICE_N_NOTIFY_CQ = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_WINDOW_TYPE_2B = common dso_local global i32 0, align 4
@IB_DEVICE_MEM_MGT_EXTENSIONS = common dso_local global i32 0, align 4
@IB_ATOMIC_NONE = common dso_local global i8* null, align 8
@MAX_PBL_LVL_1_PGS = common dso_local global i32 0, align 4
@BNXT_RE_DEFAULT_ACK_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_re_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_device_attr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.bnxt_re_dev*, align 8
  %8 = alloca %struct.bnxt_qplib_dev_attr*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %11 = call %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device* %9, %struct.ib_device* %10)
  store %struct.bnxt_re_dev* %11, %struct.bnxt_re_dev** %7, align 8
  %12 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %12, i32 0, i32 2
  store %struct.bnxt_qplib_dev_attr* %13, %struct.bnxt_qplib_dev_attr** %8, align 8
  %14 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %15 = call i32 @memset(%struct.ib_device_attr* %14, i32 0, i32 232)
  %16 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %17 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %16, i32 0, i32 40
  %18 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @min(i32 4, i32 4)
  %22 = call i32 @memcpy(i32* %17, i32 %20, i32 %21)
  %23 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %24 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %29 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %28, i32 0, i32 39
  %30 = call i32 @bnxt_qplib_get_guid(i32 %27, i32* %29)
  %31 = load i32, i32* @BNXT_RE_MAX_MR_SIZE, align 4
  %32 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %32, i32 0, i32 38
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @BNXT_RE_PAGE_SIZE_4K, align 4
  %35 = load i32, i32* @BNXT_RE_PAGE_SIZE_2M, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %40 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %47 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %46, i32 0, i32 37
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %49 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %56 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %55, i32 0, i32 36
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %7, align 8
  %58 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %65 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %64, i32 0, i32 35
  store i32 %63, i32* %65, align 4
  %66 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %70 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %69, i32 0, i32 34
  store i32 %68, i32* %70, align 8
  %71 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %72 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 33
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @IB_DEVICE_CURR_QP_STATE_MOD, align 4
  %77 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IB_DEVICE_RESIZE_MAX_WR, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IB_DEVICE_PORT_ACTIVE_EVENT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IB_DEVICE_N_NOTIFY_CQ, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IB_DEVICE_MEM_WINDOW, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IB_DEVICE_MEM_WINDOW_TYPE_2B, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IB_DEVICE_MEM_MGT_EXTENSIONS, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %98 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %100 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %102, i32 0, i32 32
  store i32 %101, i32* %103, align 8
  %104 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %105 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %108 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %107, i32 0, i32 31
  store i32 %106, i32* %108, align 4
  %109 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %110 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %109, i32 0, i32 12
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %112, i32 0, i32 30
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %115 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 29
  store i32 %116, i32* %118, align 4
  %119 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %120 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %123 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %122, i32 0, i32 28
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %125 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %128 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %127, i32 0, i32 27
  store i32 %126, i32* %128, align 4
  %129 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %130 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %133 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %132, i32 0, i32 26
  store i32 %131, i32* %133, align 8
  %134 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %135 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %138 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %137, i32 0, i32 25
  store i32 %136, i32* %138, align 4
  %139 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %140 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %143 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %142, i32 0, i32 24
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** @IB_ATOMIC_NONE, align 8
  %145 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %146 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %145, i32 0, i32 23
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** @IB_ATOMIC_NONE, align 8
  %148 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %149 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %148, i32 0, i32 22
  store i8* %147, i8** %149, align 8
  %150 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %151 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %150, i32 0, i32 21
  store i64 0, i64* %151, align 8
  %152 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %153 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %152, i32 0, i32 20
  store i64 0, i64* %153, align 8
  %154 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %155 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %154, i32 0, i32 19
  store i64 0, i64* %155, align 8
  %156 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %157 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %156, i32 0, i32 18
  store i64 0, i64* %157, align 8
  %158 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %159 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %158, i32 0, i32 17
  store i64 0, i64* %159, align 8
  %160 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %161 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %164 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %163, i32 0, i32 16
  store i32 %162, i32* %164, align 8
  %165 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %166 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %165, i32 0, i32 15
  store i64 0, i64* %166, align 8
  %167 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %168 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %171 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %170, i32 0, i32 14
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %173 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %172, i32 0, i32 13
  store i64 0, i64* %173, align 8
  %174 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %175 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %174, i32 0, i32 12
  store i64 0, i64* %175, align 8
  %176 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %177 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %176, i32 0, i32 11
  store i64 0, i64* %177, align 8
  %178 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %179 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %182 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 8
  %183 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %184 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %183, i32 0, i32 9
  store i64 0, i64* %184, align 8
  %185 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %186 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %185, i32 0, i32 8
  store i64 0, i64* %186, align 8
  %187 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %188 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %191 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  %192 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %193 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %196 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  %197 = load %struct.bnxt_qplib_dev_attr*, %struct.bnxt_qplib_dev_attr** %8, align 8
  %198 = getelementptr inbounds %struct.bnxt_qplib_dev_attr, %struct.bnxt_qplib_dev_attr* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %201 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @MAX_PBL_LVL_1_PGS, align 4
  %203 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %204 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %206 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %205, i32 0, i32 2
  store i32 1, i32* %206, align 8
  %207 = load i32, i32* @BNXT_RE_DEFAULT_ACK_DELAY, align 4
  %208 = load %struct.ib_device_attr*, %struct.ib_device_attr** %5, align 8
  %209 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  ret i32 0
}

declare dso_local %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device*, %struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bnxt_qplib_get_guid(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
