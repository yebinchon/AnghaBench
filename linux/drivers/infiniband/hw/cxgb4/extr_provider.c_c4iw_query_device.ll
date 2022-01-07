; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i64, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.ib_udata = type { i64, i64 }
%struct.c4iw_dev = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__*, i32, i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ibdev %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@T4_PAGESIZE_MASK = common dso_local global i32 0, align 4
@T4_MAX_MR_SIZE = common dso_local global i32 0, align 4
@T4_MAX_SEND_SGE = common dso_local global i32 0, align 4
@T4_MAX_WRITE_SGE = common dso_local global i32 0, align 4
@T4_MAX_RECV_SGE = common dso_local global i8* null, align 8
@c4iw_max_read_depth = common dso_local global i32 0, align 4
@T4_MAX_NUM_PD = common dso_local global i32 0, align 4
@use_dsgl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*, %struct.ib_udata*)* @c4iw_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.c4iw_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ib_device* %9)
  %11 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %12 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %17 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %195

23:                                               ; preds = %15
  %24 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %25 = call %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device* %24)
  store %struct.c4iw_dev* %25, %struct.c4iw_dev** %8, align 8
  %26 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %26, i32 0, i32 24
  %28 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %29 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32* %27, i32 %36, i32 6)
  %38 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %39 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CHELSIO_CHIP_RELEASE(i32 %42)
  %44 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %44, i32 0, i32 23
  store i32 %43, i32* %45, align 4
  %46 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %47 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 8
  %53 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %54 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %56, i32 0, i32 21
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @T4_PAGESIZE_MASK, align 4
  %59 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %59, i32 0, i32 20
  store i32 %58, i32* %60, align 8
  %61 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %62 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %70 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %69, i32 0, i32 19
  store i8* %68, i8** %70, align 8
  %71 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %72 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %80 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %79, i32 0, i32 18
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @T4_MAX_MR_SIZE, align 4
  %82 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %82, i32 0, i32 17
  store i32 %81, i32* %83, align 4
  %84 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %85 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 2
  %93 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %96 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 16
  store i32 %102, i32* %104, align 8
  %105 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %106 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %110, i32 0, i32 15
  store i32 %109, i32* %111, align 4
  %112 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %113 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 14
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @T4_MAX_SEND_SGE, align 4
  %120 = load i32, i32* @T4_MAX_WRITE_SGE, align 4
  %121 = call i8* @min(i32 %119, i32 %120)
  %122 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %123 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %122, i32 0, i32 13
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @T4_MAX_RECV_SGE, align 8
  %125 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %125, i32 0, i32 12
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @T4_MAX_RECV_SGE, align 8
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 11
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %133 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %138 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  %139 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %140 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @c4iw_max_read_depth, align 4
  %145 = call i8* @min(i32 %143, i32 %144)
  %146 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %148, i32 0, i32 8
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %154 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %162 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %164 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %169 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 8
  %170 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %171 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %170, i32 0, i32 0
  %172 = call i32 @c4iw_num_stags(%struct.TYPE_16__* %171)
  %173 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @T4_MAX_NUM_PD, align 4
  %176 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %177 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %179 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %181 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %23
  %187 = load i64, i64* @use_dsgl, align 8
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %186, %23
  %190 = phi i1 [ false, %23 ], [ %188, %186 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @t4_max_fr_depth(i32 %191)
  %193 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %194 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %193, i32 0, i32 3
  store i32 %192, i32* %194, align 4
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %189, %20
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @pr_debug(i8*, %struct.ib_device*) #1

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @CHELSIO_CHIP_RELEASE(i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @c4iw_num_stags(%struct.TYPE_16__*) #1

declare dso_local i32 @t4_max_fr_depth(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
