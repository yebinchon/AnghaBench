; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9033.c_af9033_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val_mask = type { i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.af9033_dev* }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.af9033_dev = type { i32, i32, i64, i32, %struct.TYPE_17__, %struct.i2c_client* }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i64 }
%struct.i2c_client = type { i32 }
%struct.reg_val = type { i32, i32, i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"clk=%u clk_cw=%08x\0A\00", align 1
@clock_adc_lut = common dso_local global %struct.reg_val_mask* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't find ADC config for clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"adc=%u adc_cw=%06x\0A\00", align 1
@AF9033_TS_MODE_USB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"load ofsm settings\0A\00", align 1
@ofsm_init_it9135_v1 = common dso_local global %struct.reg_val_mask* null, align 8
@ofsm_init_it9135_v2 = common dso_local global %struct.reg_val_mask* null, align 8
@ofsm_init = common dso_local global %struct.reg_val_mask* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"load tuner specific settings\0A\00", align 1
@tuner_init_tua9001 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_fc0011 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_mxl5007t = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_tda18218 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_fc2580 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_fc0012 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_38 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_51 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_52 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_60 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_61 = common dso_local global %struct.reg_val_mask* null, align 8
@tuner_init_it9135_62 = common dso_local global %struct.reg_val_mask* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"unsupported tuner ID=%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AF9033_TS_MODE_SERIAL = common dso_local global i64 0, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @af9033_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9033_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.af9033_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reg_val*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca [26 x %struct.reg_val_mask], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1
  %16 = load %struct.af9033_dev*, %struct.af9033_dev** %15, align 8
  store %struct.af9033_dev* %16, %struct.af9033_dev** %4, align 8
  %17 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %18 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %17, i32 0, i32 5
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %5, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %6, align 8
  %22 = bitcast [26 x %struct.reg_val_mask]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 1248, i1 false)
  %23 = getelementptr inbounds [26 x %struct.reg_val_mask], [26 x %struct.reg_val_mask]* %13, i64 0, i64 0
  %24 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %23, i32 0, i32 0
  store i32 8452900, i32* %24, align 16
  %25 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %23, i32 0, i32 2
  store i32 8, i32* %25, align 8
  %26 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %23, i64 1
  %27 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %26, i32 0, i32 0
  store i32 8388684, i32* %27, align 16
  %28 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %26, i32 0, i32 2
  store i32 255, i32* %28, align 8
  %29 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %26, i64 1
  %30 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %29, i32 0, i32 0
  store i32 63041, i32* %30, align 16
  %31 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %29, i32 0, i32 1
  %32 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %33 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %29, i32 0, i32 2
  store i32 255, i32* %36, align 8
  %37 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %29, i64 1
  %38 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 0
  store i32 8451530, i32* %38, align 16
  %39 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %37, i64 1
  %42 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %41, i32 0, i32 0
  store i32 8451861, i32* %42, align 16
  %43 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %41, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %41, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %41, i64 1
  %46 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %45, i32 0, i32 0
  store i32 62495, i32* %46, align 16
  %47 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %45, i32 0, i32 1
  store i32 4, i32* %47, align 4
  %48 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %45, i32 0, i32 2
  store i32 4, i32* %48, align 8
  %49 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %45, i64 1
  %50 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %49, i32 0, i32 0
  store i32 62490, i32* %50, align 16
  %51 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %49, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %49, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %49, i64 1
  %54 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %53, i32 0, i32 0
  store i32 8451889, i32* %54, align 16
  %55 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %53, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %53, i64 1
  %57 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %56, i32 0, i32 0
  store i32 55582, i32* %57, align 16
  %58 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %56, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %56, i64 1
  %60 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %59, i32 0, i32 0
  store i32 55577, i32* %60, align 16
  %61 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %59, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %59, i64 1
  %63 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %62, i32 0, i32 0
  store i32 8451890, i32* %63, align 16
  %64 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %62, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %62, i64 1
  %66 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 0
  store i32 55583, i32* %66, align 16
  %67 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %65, i64 1
  %69 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %68, i32 0, i32 0
  store i32 55578, i32* %69, align 16
  %70 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %68, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %68, i64 1
  %72 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %71, i32 0, i32 0
  store i32 8451888, i32* %72, align 16
  %73 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %71, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %71, i64 1
  %75 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %74, i32 0, i32 0
  store i32 8451960, i32* %75, align 16
  %76 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %74, i32 0, i32 2
  store i32 255, i32* %76, align 8
  %77 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %74, i64 1
  %78 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %77, i32 0, i32 0
  store i32 8451900, i32* %78, align 16
  %79 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %77, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %77, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %77, i64 1
  %82 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %81, i32 0, i32 0
  store i32 8451958, i32* %82, align 16
  %83 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %81, i32 0, i32 2
  store i32 1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %81, i64 1
  %85 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %84, i32 0, i32 0
  store i32 55549, i32* %85, align 16
  %86 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %84, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %84, i32 0, i32 2
  store i32 255, i32* %87, align 8
  %88 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %84, i64 1
  %89 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %88, i32 0, i32 0
  store i32 55344, i32* %89, align 16
  %90 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %88, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %88, i32 0, i32 2
  store i32 255, i32* %91, align 8
  %92 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %88, i64 1
  %93 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %92, i32 0, i32 0
  store i32 55345, i32* %93, align 16
  %94 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %92, i32 0, i32 2
  store i32 255, i32* %94, align 8
  %95 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %92, i64 1
  %96 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %95, i32 0, i32 0
  store i32 55346, i32* %96, align 16
  %97 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %95, i32 0, i32 2
  store i32 255, i32* %97, align 8
  %98 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %95, i64 1
  %99 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %98, i32 0, i32 0
  store i32 8452485, i32* %99, align 16
  %100 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %98, i32 0, i32 1
  %101 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %102 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %100, align 4
  %104 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %98, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %98, i64 1
  %106 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %105, i32 0, i32 0
  store i32 8452486, i32* %106, align 16
  %107 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %105, i32 0, i32 1
  %108 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %109 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %107, align 4
  %111 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %105, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %105, i64 1
  %113 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %112, i32 0, i32 0
  store i32 55335, i32* %113, align 16
  %114 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %112, i32 0, i32 2
  store i32 255, i32* %114, align 8
  %115 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %112, i64 1
  %116 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %115, i32 0, i32 0
  store i32 55337, i32* %116, align 16
  %117 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %115, i32 0, i32 2
  store i32 255, i32* %117, align 8
  %118 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %115, i64 1
  %119 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 0
  store i32 8388677, i32* %119, align 16
  %120 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 1
  %121 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %122 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %120, align 4
  %125 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %118, i32 0, i32 2
  store i32 255, i32* %125, align 8
  %126 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %129 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %130 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = mul nsw i32 %133, 524288
  %135 = call i32 @div_u64(i32 %134, i32 1000000)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = lshr i32 %136, 0
  %138 = and i32 %137, 255
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %138, i32* %139, align 16
  %140 = load i32, i32* %10, align 4
  %141 = lshr i32 %140, 8
  %142 = and i32 %141, 255
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %10, align 4
  %145 = lshr i32 %144, 16
  %146 = and i32 %145, 255
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = lshr i32 %148, 24
  %150 = and i32 %149, 255
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %150, i32* %151, align 4
  %152 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %153 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %156 = call i32 @regmap_bulk_write(i32 %154, i32 8388645, i32* %155, i32 4)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %1
  br label %561

160:                                              ; preds = %1
  %161 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 0
  %163 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %164 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %166, i32 %167)
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %188, %160
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.reg_val_mask*, %struct.reg_val_mask** @clock_adc_lut, align 8
  %172 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %171)
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = load %struct.reg_val_mask*, %struct.reg_val_mask** @clock_adc_lut, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %175, i64 %177
  %179 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %182 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %180, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  br label %191

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %169

191:                                              ; preds = %186, %169
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.reg_val_mask*, %struct.reg_val_mask** @clock_adc_lut, align 8
  %194 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %193)
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %200 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @dev_err(i32* %198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %202)
  br label %561

204:                                              ; preds = %191
  %205 = load %struct.reg_val_mask*, %struct.reg_val_mask** @clock_adc_lut, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %205, i64 %207
  %209 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %208, i32 0, i32 7
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = mul nsw i32 %211, 524288
  %213 = call i32 @div_u64(i32 %212, i32 1000000)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = lshr i32 %214, 0
  %216 = and i32 %215, 255
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %216, i32* %217, align 16
  %218 = load i32, i32* %10, align 4
  %219 = lshr i32 %218, 8
  %220 = and i32 %219, 255
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* %10, align 4
  %223 = lshr i32 %222, 16
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %224, i32* %225, align 8
  %226 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %227 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %230 = call i32 @regmap_bulk_write(i32 %228, i32 8450509, i32* %229, i32 3)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %204
  br label %561

234:                                              ; preds = %204
  %235 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %236 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %235, i32 0, i32 0
  %237 = load %struct.reg_val_mask*, %struct.reg_val_mask** @clock_adc_lut, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %237, i64 %239
  %241 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %240, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %242, i32 %243)
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %274, %234
  %246 = load i32, i32* %8, align 4
  %247 = getelementptr inbounds [26 x %struct.reg_val_mask], [26 x %struct.reg_val_mask]* %13, i64 0, i64 0
  %248 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %247)
  %249 = icmp slt i32 %246, %248
  br i1 %249, label %250, label %277

250:                                              ; preds = %245
  %251 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %252 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [26 x %struct.reg_val_mask], [26 x %struct.reg_val_mask]* %13, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [26 x %struct.reg_val_mask], [26 x %struct.reg_val_mask]* %13, i64 0, i64 %260
  %262 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [26 x %struct.reg_val_mask], [26 x %struct.reg_val_mask]* %13, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.reg_val_mask, %struct.reg_val_mask* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 16
  %269 = call i32 @regmap_update_bits(i32 %253, i32 %258, i32 %263, i32 %268)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %250
  br label %561

273:                                              ; preds = %250
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %245

277:                                              ; preds = %245
  %278 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %279 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %278, i32 0, i32 4
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 4
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %277
  %284 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %285 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @regmap_write(i32 %286, i32 8453032, i32 0)
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  br label %561

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291, %277
  %293 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %294 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @AF9033_TS_MODE_USB, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %316

299:                                              ; preds = %292
  %300 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %301 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @regmap_update_bits(i32 %302, i32 8452517, i32 1, i32 0)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %561

307:                                              ; preds = %299
  %308 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %309 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @regmap_update_bits(i32 %310, i32 8452533, i32 1, i32 1)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %307
  br label %561

315:                                              ; preds = %307
  br label %333

316:                                              ; preds = %292
  %317 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %318 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @regmap_update_bits(i32 %319, i32 8452496, i32 1, i32 0)
  store i32 %320, i32* %7, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  br label %561

324:                                              ; preds = %316
  %325 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %326 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @regmap_update_bits(i32 %327, i32 8452533, i32 1, i32 0)
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %324
  br label %561

332:                                              ; preds = %324
  br label %333

333:                                              ; preds = %332, %315
  %334 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %335 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %334, i32 0, i32 0
  %336 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %335, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %337 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %338 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  switch i32 %340, label %351 [
    i32 136, label %341
    i32 135, label %341
    i32 134, label %341
    i32 133, label %346
    i32 132, label %346
    i32 131, label %346
  ]

341:                                              ; preds = %333, %333, %333
  %342 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init_it9135_v1, align 8
  %343 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %342)
  store i32 %343, i32* %9, align 4
  %344 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init_it9135_v1, align 8
  %345 = bitcast %struct.reg_val_mask* %344 to %struct.reg_val*
  store %struct.reg_val* %345, %struct.reg_val** %11, align 8
  br label %356

346:                                              ; preds = %333, %333, %333
  %347 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init_it9135_v2, align 8
  %348 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %347)
  store i32 %348, i32* %9, align 4
  %349 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init_it9135_v2, align 8
  %350 = bitcast %struct.reg_val_mask* %349 to %struct.reg_val*
  store %struct.reg_val* %350, %struct.reg_val** %11, align 8
  br label %356

351:                                              ; preds = %333
  %352 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init, align 8
  %353 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %352)
  store i32 %353, i32* %9, align 4
  %354 = load %struct.reg_val_mask*, %struct.reg_val_mask** @ofsm_init, align 8
  %355 = bitcast %struct.reg_val_mask* %354 to %struct.reg_val*
  store %struct.reg_val* %355, %struct.reg_val** %11, align 8
  br label %356

356:                                              ; preds = %351, %346, %341
  %357 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %358 = load %struct.reg_val*, %struct.reg_val** %11, align 8
  %359 = bitcast %struct.reg_val* %358 to %struct.reg_val_mask*
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @af9033_wr_reg_val_tab(%struct.af9033_dev* %357, %struct.reg_val_mask* %359, i32 %360)
  store i32 %361, i32* %7, align 4
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %356
  br label %561

365:                                              ; preds = %356
  %366 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %367 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %366, i32 0, i32 0
  %368 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %367, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %369 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %370 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  switch i32 %372, label %433 [
    i32 128, label %373
    i32 139, label %378
    i32 130, label %383
    i32 129, label %388
    i32 137, label %393
    i32 138, label %398
    i32 136, label %403
    i32 135, label %408
    i32 134, label %413
    i32 133, label %418
    i32 132, label %423
    i32 131, label %428
  ]

373:                                              ; preds = %365
  %374 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_tua9001, align 8
  %375 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %374)
  store i32 %375, i32* %9, align 4
  %376 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_tua9001, align 8
  %377 = bitcast %struct.reg_val_mask* %376 to %struct.reg_val*
  store %struct.reg_val* %377, %struct.reg_val** %11, align 8
  br label %443

378:                                              ; preds = %365
  %379 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc0011, align 8
  %380 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %379)
  store i32 %380, i32* %9, align 4
  %381 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc0011, align 8
  %382 = bitcast %struct.reg_val_mask* %381 to %struct.reg_val*
  store %struct.reg_val* %382, %struct.reg_val** %11, align 8
  br label %443

383:                                              ; preds = %365
  %384 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_mxl5007t, align 8
  %385 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %384)
  store i32 %385, i32* %9, align 4
  %386 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_mxl5007t, align 8
  %387 = bitcast %struct.reg_val_mask* %386 to %struct.reg_val*
  store %struct.reg_val* %387, %struct.reg_val** %11, align 8
  br label %443

388:                                              ; preds = %365
  %389 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_tda18218, align 8
  %390 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %389)
  store i32 %390, i32* %9, align 4
  %391 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_tda18218, align 8
  %392 = bitcast %struct.reg_val_mask* %391 to %struct.reg_val*
  store %struct.reg_val* %392, %struct.reg_val** %11, align 8
  br label %443

393:                                              ; preds = %365
  %394 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc2580, align 8
  %395 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %394)
  store i32 %395, i32* %9, align 4
  %396 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc2580, align 8
  %397 = bitcast %struct.reg_val_mask* %396 to %struct.reg_val*
  store %struct.reg_val* %397, %struct.reg_val** %11, align 8
  br label %443

398:                                              ; preds = %365
  %399 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc0012, align 8
  %400 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %399)
  store i32 %400, i32* %9, align 4
  %401 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_fc0012, align 8
  %402 = bitcast %struct.reg_val_mask* %401 to %struct.reg_val*
  store %struct.reg_val* %402, %struct.reg_val** %11, align 8
  br label %443

403:                                              ; preds = %365
  %404 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_38, align 8
  %405 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %404)
  store i32 %405, i32* %9, align 4
  %406 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_38, align 8
  %407 = bitcast %struct.reg_val_mask* %406 to %struct.reg_val*
  store %struct.reg_val* %407, %struct.reg_val** %11, align 8
  br label %443

408:                                              ; preds = %365
  %409 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_51, align 8
  %410 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %409)
  store i32 %410, i32* %9, align 4
  %411 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_51, align 8
  %412 = bitcast %struct.reg_val_mask* %411 to %struct.reg_val*
  store %struct.reg_val* %412, %struct.reg_val** %11, align 8
  br label %443

413:                                              ; preds = %365
  %414 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_52, align 8
  %415 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %414)
  store i32 %415, i32* %9, align 4
  %416 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_52, align 8
  %417 = bitcast %struct.reg_val_mask* %416 to %struct.reg_val*
  store %struct.reg_val* %417, %struct.reg_val** %11, align 8
  br label %443

418:                                              ; preds = %365
  %419 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_60, align 8
  %420 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %419)
  store i32 %420, i32* %9, align 4
  %421 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_60, align 8
  %422 = bitcast %struct.reg_val_mask* %421 to %struct.reg_val*
  store %struct.reg_val* %422, %struct.reg_val** %11, align 8
  br label %443

423:                                              ; preds = %365
  %424 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_61, align 8
  %425 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %424)
  store i32 %425, i32* %9, align 4
  %426 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_61, align 8
  %427 = bitcast %struct.reg_val_mask* %426 to %struct.reg_val*
  store %struct.reg_val* %427, %struct.reg_val** %11, align 8
  br label %443

428:                                              ; preds = %365
  %429 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_62, align 8
  %430 = call i32 @ARRAY_SIZE(%struct.reg_val_mask* %429)
  store i32 %430, i32* %9, align 4
  %431 = load %struct.reg_val_mask*, %struct.reg_val_mask** @tuner_init_it9135_62, align 8
  %432 = bitcast %struct.reg_val_mask* %431 to %struct.reg_val*
  store %struct.reg_val* %432, %struct.reg_val** %11, align 8
  br label %443

433:                                              ; preds = %365
  %434 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %435 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %434, i32 0, i32 0
  %436 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %437 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %436, i32 0, i32 4
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %435, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %439)
  %441 = load i32, i32* @ENODEV, align 4
  %442 = sub nsw i32 0, %441
  store i32 %442, i32* %7, align 4
  br label %561

443:                                              ; preds = %428, %423, %418, %413, %408, %403, %398, %393, %388, %383, %378, %373
  %444 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %445 = load %struct.reg_val*, %struct.reg_val** %11, align 8
  %446 = bitcast %struct.reg_val* %445 to %struct.reg_val_mask*
  %447 = load i32, i32* %9, align 4
  %448 = call i32 @af9033_wr_reg_val_tab(%struct.af9033_dev* %444, %struct.reg_val_mask* %446, i32 %447)
  store i32 %448, i32* %7, align 4
  %449 = load i32, i32* %7, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %443
  br label %561

452:                                              ; preds = %443
  %453 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %454 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %453, i32 0, i32 4
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @AF9033_TS_MODE_SERIAL, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %484

459:                                              ; preds = %452
  %460 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %461 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @regmap_update_bits(i32 %462, i32 55580, i32 1, i32 1)
  store i32 %463, i32* %7, align 4
  %464 = load i32, i32* %7, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %459
  br label %561

467:                                              ; preds = %459
  %468 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %469 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @regmap_update_bits(i32 %470, i32 55575, i32 1, i32 0)
  store i32 %471, i32* %7, align 4
  %472 = load i32, i32* %7, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %467
  br label %561

475:                                              ; preds = %467
  %476 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %477 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @regmap_update_bits(i32 %478, i32 55574, i32 1, i32 0)
  store i32 %479, i32* %7, align 4
  %480 = load i32, i32* %7, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %475
  br label %561

483:                                              ; preds = %475
  br label %484

484:                                              ; preds = %483, %452
  %485 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %486 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %485, i32 0, i32 4
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  switch i32 %488, label %498 [
    i32 133, label %489
    i32 132, label %489
    i32 131, label %489
  ]

489:                                              ; preds = %484, %484, %484
  %490 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %491 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @regmap_write(i32 %492, i32 8388608, i32 1)
  store i32 %493, i32* %7, align 4
  %494 = load i32, i32* %7, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %497

496:                                              ; preds = %489
  br label %561

497:                                              ; preds = %489
  br label %498

498:                                              ; preds = %497, %484
  %499 = load %struct.af9033_dev*, %struct.af9033_dev** %4, align 8
  %500 = getelementptr inbounds %struct.af9033_dev, %struct.af9033_dev* %499, i32 0, i32 2
  store i64 0, i64* %500, align 8
  %501 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %502 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %501, i32 0, i32 5
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 0
  store i32 1, i32* %503, align 8
  %504 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %505 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %506 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_18__*, %struct.TYPE_18__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i64 0
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  store i8* %504, i8** %510, align 8
  %511 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %512 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %511, i32 0, i32 4
  %513 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %512, i32 0, i32 0
  store i32 1, i32* %513, align 8
  %514 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %515 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %516 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %515, i32 0, i32 4
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 1
  %518 = load %struct.TYPE_20__*, %struct.TYPE_20__** %517, align 8
  %519 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %518, i64 0
  %520 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %519, i32 0, i32 0
  store i8* %514, i8** %520, align 8
  %521 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %522 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %521, i32 0, i32 3
  %523 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %522, i32 0, i32 0
  store i32 1, i32* %523, align 8
  %524 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %525 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %526 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %525, i32 0, i32 3
  %527 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %526, i32 0, i32 1
  %528 = load %struct.TYPE_22__*, %struct.TYPE_22__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %528, i64 0
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %529, i32 0, i32 0
  store i8* %524, i8** %530, align 8
  %531 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %532 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %532, i32 0, i32 0
  store i32 1, i32* %533, align 8
  %534 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %535 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %536 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %535, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %536, i32 0, i32 1
  %538 = load %struct.TYPE_24__*, %struct.TYPE_24__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %538, i64 0
  %540 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %539, i32 0, i32 0
  store i8* %534, i8** %540, align 8
  %541 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %542 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %542, i32 0, i32 0
  store i32 1, i32* %543, align 8
  %544 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %545 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %546 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %546, i32 0, i32 1
  %548 = load %struct.TYPE_26__*, %struct.TYPE_26__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %548, i64 0
  %550 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %549, i32 0, i32 0
  store i8* %544, i8** %550, align 8
  %551 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %552 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %552, i32 0, i32 0
  store i32 1, i32* %553, align 8
  %554 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %555 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %556 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_15__*, %struct.TYPE_15__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %558, i64 0
  %560 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %559, i32 0, i32 0
  store i8* %554, i8** %560, align 8
  store i32 0, i32* %2, align 4
  br label %567

561:                                              ; preds = %496, %482, %474, %466, %451, %433, %364, %331, %323, %314, %306, %290, %272, %233, %196, %159
  %562 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %563 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %562, i32 0, i32 0
  %564 = load i32, i32* %7, align 4
  %565 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %563, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %564)
  %566 = load i32, i32* %7, align 4
  store i32 %566, i32* %2, align 4
  br label %567

567:                                              ; preds = %561, %498
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @div_u64(i32, i32) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val_mask*) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @af9033_wr_reg_val_tab(%struct.af9033_dev*, %struct.reg_val_mask*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
