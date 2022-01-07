; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.rtl2830_dev = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.rtl2830_reg_val_mask = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\04\06\0A\12\0A\12\1E(\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @rtl2830_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtl2830_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [36 x %struct.rtl2830_reg_val_mask], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.rtl2830_dev* %14, %struct.rtl2830_dev** %5, align 8
  %15 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %6, align 8
  %18 = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 0
  store i32 13, i32* %19, align 8
  %20 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 2
  store i32 3, i32* %21, align 8
  %22 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %18, i64 1
  %26 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 0
  store i32 13, i32* %26, align 8
  %27 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 1
  store i32 16, i32* %27, align 4
  %28 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 2
  store i32 16, i32* %28, align 8
  %29 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i32 0, i32 5
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %25, i64 1
  %33 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 0
  store i32 260, i32* %33, align 8
  %34 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 2
  store i32 30, i32* %35, align 8
  %36 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %32, i64 1
  %40 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 0
  store i32 261, i32* %40, align 8
  %41 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 1
  store i32 128, i32* %41, align 4
  %42 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 2
  store i32 128, i32* %42, align 8
  %43 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 3
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 4
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i32 0, i32 5
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %39, i64 1
  %47 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 0
  store i32 272, i32* %47, align 8
  %48 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 1
  store i32 2, i32* %48, align 4
  %49 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 2
  store i32 3, i32* %49, align 8
  %50 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i32 0, i32 5
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %46, i64 1
  %54 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 0
  store i32 272, i32* %54, align 8
  %55 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 1
  store i32 8, i32* %55, align 4
  %56 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 2
  store i32 12, i32* %56, align 8
  %57 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 4
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i32 0, i32 5
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %53, i64 1
  %61 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 0
  store i32 379, i32* %61, align 8
  %62 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 2
  store i32 64, i32* %63, align 8
  %64 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 4
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i32 0, i32 5
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %60, i64 1
  %68 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 0
  store i32 381, i32* %68, align 8
  %69 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 1
  store i32 5, i32* %69, align 4
  %70 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 2
  store i32 15, i32* %70, align 8
  %71 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 4
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i32 0, i32 5
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %67, i64 1
  %75 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 0
  store i32 381, i32* %75, align 8
  %76 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 1
  store i32 80, i32* %76, align 4
  %77 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 2
  store i32 240, i32* %77, align 8
  %78 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 4
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i32 0, i32 5
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %74, i64 1
  %82 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 0
  store i32 396, i32* %82, align 8
  %83 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 1
  store i32 8, i32* %83, align 4
  %84 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 2
  store i32 15, i32* %84, align 8
  %85 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 4
  store i32 0, i32* %86, align 8
  %87 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i32 0, i32 5
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %81, i64 1
  %89 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 0
  store i32 397, i32* %89, align 8
  %90 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 2
  store i32 192, i32* %91, align 8
  %92 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 4
  store i32 0, i32* %93, align 8
  %94 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %88, i64 1
  %96 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 0
  store i32 392, i32* %96, align 8
  %97 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 1
  store i32 5, i32* %97, align 4
  %98 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 2
  store i32 15, i32* %98, align 8
  %99 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i32 0, i32 5
  store i32 0, i32* %101, align 4
  %102 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %95, i64 1
  %103 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 0
  store i32 393, i32* %103, align 8
  %104 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 2
  store i32 252, i32* %105, align 8
  %106 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 3
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 4
  store i32 0, i32* %107, align 8
  %108 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i32 0, i32 5
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %102, i64 1
  %110 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 0
  store i32 725, i32* %110, align 8
  %111 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 1
  store i32 2, i32* %111, align 4
  %112 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 2
  store i32 2, i32* %112, align 8
  %113 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 3
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 4
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i32 0, i32 5
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %109, i64 1
  %117 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 0
  store i32 753, i32* %117, align 8
  %118 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 1
  store i32 2, i32* %118, align 4
  %119 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 2
  store i32 6, i32* %119, align 8
  %120 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 3
  store i32 0, i32* %120, align 4
  %121 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 4
  store i32 0, i32* %121, align 8
  %122 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i32 0, i32 5
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %116, i64 1
  %124 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 0
  store i32 753, i32* %124, align 8
  %125 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 1
  store i32 32, i32* %125, align 4
  %126 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 2
  store i32 248, i32* %126, align 8
  %127 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 3
  store i32 0, i32* %127, align 4
  %128 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 4
  store i32 0, i32* %128, align 8
  %129 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i32 0, i32 5
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %123, i64 1
  %131 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 0
  store i32 365, i32* %131, align 8
  %132 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 2
  store i32 1, i32* %133, align 8
  %134 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 4
  store i32 0, i32* %135, align 8
  %136 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i32 0, i32 5
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %130, i64 1
  %138 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 0
  store i32 422, i32* %138, align 8
  %139 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 2
  store i32 128, i32* %140, align 8
  %141 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 3
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 4
  store i32 0, i32* %142, align 8
  %143 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i32 0, i32 5
  store i32 0, i32* %143, align 4
  %144 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %137, i64 1
  %145 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 0
  store i32 262, i32* %145, align 8
  %146 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 1
  %147 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %148 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %146, align 4
  %152 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 2
  store i32 63, i32* %152, align 8
  %153 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 3
  store i32 0, i32* %153, align 4
  %154 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i32 0, i32 5
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %144, i64 1
  %157 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 0
  store i32 263, i32* %157, align 8
  %158 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 1
  %159 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %160 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %158, align 4
  %164 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 2
  store i32 63, i32* %164, align 8
  %165 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 3
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 4
  store i32 0, i32* %166, align 8
  %167 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i32 0, i32 5
  store i32 0, i32* %167, align 4
  %168 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %156, i64 1
  %169 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 0
  store i32 274, i32* %169, align 8
  %170 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 1
  store i32 40, i32* %170, align 4
  %171 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 2
  store i32 255, i32* %171, align 8
  %172 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 3
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 4
  store i32 0, i32* %173, align 8
  %174 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i32 0, i32 5
  store i32 0, i32* %174, align 4
  %175 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %168, i64 1
  %176 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 0
  store i32 259, i32* %176, align 8
  %177 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 1
  %178 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %179 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %177, align 4
  %183 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 2
  store i32 255, i32* %183, align 8
  %184 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 3
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 4
  store i32 0, i32* %185, align 8
  %186 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i32 0, i32 5
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %175, i64 1
  %188 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 0
  store i32 10, i32* %188, align 8
  %189 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 1
  store i32 2, i32* %189, align 4
  %190 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 2
  store i32 7, i32* %190, align 8
  %191 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 3
  store i32 0, i32* %191, align 4
  %192 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 4
  store i32 0, i32* %192, align 8
  %193 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i32 0, i32 5
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %187, i64 1
  %195 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 0
  store i32 320, i32* %195, align 8
  %196 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 1
  store i32 12, i32* %196, align 4
  %197 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 2
  store i32 60, i32* %197, align 8
  %198 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 3
  store i32 0, i32* %198, align 4
  %199 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 4
  store i32 0, i32* %199, align 8
  %200 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i32 0, i32 5
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %194, i64 1
  %202 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 0
  store i32 320, i32* %202, align 8
  %203 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 1
  store i32 64, i32* %203, align 4
  %204 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 2
  store i32 192, i32* %204, align 8
  %205 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 3
  store i32 0, i32* %205, align 4
  %206 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 4
  store i32 0, i32* %206, align 8
  %207 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i32 0, i32 5
  store i32 0, i32* %207, align 4
  %208 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %201, i64 1
  %209 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 0
  store i32 347, i32* %209, align 8
  %210 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 1
  store i32 5, i32* %210, align 4
  %211 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 2
  store i32 7, i32* %211, align 8
  %212 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 3
  store i32 0, i32* %212, align 4
  %213 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 4
  store i32 0, i32* %213, align 8
  %214 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i32 0, i32 5
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %208, i64 1
  %216 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 0
  store i32 347, i32* %216, align 8
  %217 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 1
  store i32 40, i32* %217, align 4
  %218 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 2
  store i32 56, i32* %218, align 8
  %219 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 3
  store i32 0, i32* %219, align 4
  %220 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 4
  store i32 0, i32* %220, align 8
  %221 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i32 0, i32 5
  store i32 0, i32* %221, align 4
  %222 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %215, i64 1
  %223 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 0
  store i32 348, i32* %223, align 8
  %224 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 1
  store i32 5, i32* %224, align 4
  %225 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 2
  store i32 7, i32* %225, align 8
  %226 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 3
  store i32 0, i32* %226, align 4
  %227 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 4
  store i32 0, i32* %227, align 8
  %228 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i32 0, i32 5
  store i32 0, i32* %228, align 4
  %229 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %222, i64 1
  %230 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 0
  store i32 348, i32* %230, align 8
  %231 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 1
  store i32 40, i32* %231, align 4
  %232 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 2
  store i32 56, i32* %232, align 8
  %233 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 3
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 4
  store i32 0, i32* %234, align 8
  %235 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i32 0, i32 5
  store i32 0, i32* %235, align 4
  %236 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %229, i64 1
  %237 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 0
  store i32 277, i32* %237, align 8
  %238 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 1
  %239 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %240 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %239, i32 0, i32 1
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %238, align 4
  %244 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 2
  store i32 1, i32* %244, align 8
  %245 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 3
  store i32 0, i32* %245, align 4
  %246 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 4
  store i32 0, i32* %246, align 8
  %247 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i32 0, i32 5
  store i32 0, i32* %247, align 4
  %248 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %236, i64 1
  %249 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 0
  store i32 367, i32* %249, align 8
  %250 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 1
  store i32 1, i32* %250, align 4
  %251 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 2
  store i32 7, i32* %251, align 8
  %252 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 3
  store i32 0, i32* %252, align 4
  %253 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 4
  store i32 0, i32* %253, align 8
  %254 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i32 0, i32 5
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %248, i64 1
  %256 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 0
  store i32 368, i32* %256, align 8
  %257 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 1
  store i32 24, i32* %257, align 4
  %258 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 2
  store i32 56, i32* %258, align 8
  %259 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 3
  store i32 0, i32* %259, align 4
  %260 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 4
  store i32 0, i32* %260, align 8
  %261 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i32 0, i32 5
  store i32 0, i32* %261, align 4
  %262 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %255, i64 1
  %263 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 0
  store i32 370, i32* %263, align 8
  %264 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 1
  store i32 15, i32* %264, align 4
  %265 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 2
  store i32 15, i32* %265, align 8
  %266 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 3
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 4
  store i32 0, i32* %267, align 8
  %268 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i32 0, i32 5
  store i32 0, i32* %268, align 4
  %269 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %262, i64 1
  %270 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 0
  store i32 371, i32* %270, align 8
  %271 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 1
  store i32 8, i32* %271, align 4
  %272 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 2
  store i32 56, i32* %272, align 8
  %273 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 3
  store i32 0, i32* %273, align 4
  %274 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 4
  store i32 0, i32* %274, align 8
  %275 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i32 0, i32 5
  store i32 0, i32* %275, align 4
  %276 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %269, i64 1
  %277 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 0
  store i32 373, i32* %277, align 8
  %278 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 1
  store i32 1, i32* %278, align 4
  %279 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 2
  store i32 7, i32* %279, align 8
  %280 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 3
  store i32 0, i32* %280, align 4
  %281 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 4
  store i32 0, i32* %281, align 8
  %282 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i32 0, i32 5
  store i32 0, i32* %282, align 4
  %283 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %276, i64 1
  %284 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 0
  store i32 374, i32* %284, align 8
  %285 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 1
  store i32 0, i32* %285, align 4
  %286 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 2
  store i32 192, i32* %286, align 8
  %287 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 3
  store i32 0, i32* %287, align 4
  %288 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 4
  store i32 0, i32* %288, align 8
  %289 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %283, i32 0, i32 5
  store i32 0, i32* %289, align 4
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %317, %1
  %291 = load i32, i32* %8, align 4
  %292 = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %9, i64 0, i64 0
  %293 = call i32 @ARRAY_SIZE(%struct.rtl2830_reg_val_mask* %292)
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %320

295:                                              ; preds = %290
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %9, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %9, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [36 x %struct.rtl2830_reg_val_mask], [36 x %struct.rtl2830_reg_val_mask]* %9, i64 0, i64 %308
  %310 = getelementptr inbounds %struct.rtl2830_reg_val_mask, %struct.rtl2830_reg_val_mask* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @rtl2830_update_bits(%struct.i2c_client* %296, i32 %301, i32 %306, i32 %311)
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %295
  br label %388

316:                                              ; preds = %295
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %8, align 4
  br label %290

320:                                              ; preds = %290
  %321 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %322 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %321, i32 399, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  br label %388

326:                                              ; preds = %320
  %327 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %328 = call i32 @rtl2830_bulk_write(%struct.i2c_client* %327, i32 405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  br label %388

332:                                              ; preds = %326
  %333 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %334 = call i32 @rtl2830_update_bits(%struct.i2c_client* %333, i32 257, i32 4, i32 4)
  store i32 %334, i32* %7, align 4
  %335 = load i32, i32* %7, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %332
  br label %388

338:                                              ; preds = %332
  %339 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %340 = call i32 @rtl2830_update_bits(%struct.i2c_client* %339, i32 257, i32 4, i32 0)
  store i32 %340, i32* %7, align 4
  %341 = load i32, i32* %7, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  br label %388

344:                                              ; preds = %338
  %345 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %346 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  store i32 1, i32* %347, align 8
  %348 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %349 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %350 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i64 0
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 0
  store i8* %348, i8** %354, align 8
  %355 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %356 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 0
  store i32 1, i32* %357, align 8
  %358 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %359 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %360 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i64 0
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 0
  store i8* %358, i8** %364, align 8
  %365 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %366 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 0
  store i32 1, i32* %367, align 8
  %368 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %369 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %370 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i64 0
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  store i8* %368, i8** %374, align 8
  %375 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %376 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  store i32 1, i32* %377, align 8
  %378 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %379 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %380 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i64 0
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 0
  store i8* %378, i8** %384, align 8
  %385 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %5, align 8
  %386 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %385, i32 0, i32 0
  store i32 0, i32* %386, align 8
  %387 = load i32, i32* %7, align 4
  store i32 %387, i32* %2, align 4
  br label %394

388:                                              ; preds = %343, %337, %331, %325, %315
  %389 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %390 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %389, i32 0, i32 0
  %391 = load i32, i32* %7, align 4
  %392 = call i32 @dev_dbg(i32* %390, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %391)
  %393 = load i32, i32* %7, align 4
  store i32 %393, i32* %2, align 4
  br label %394

394:                                              ; preds = %388, %344
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rtl2830_reg_val_mask*) #1

declare dso_local i32 @rtl2830_update_bits(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @rtl2830_bulk_write(%struct.i2c_client*, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
