; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832.c_rtl2832_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_reg_value = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.rtl2832_dev* }
%struct.rtl2832_dev = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.i2c_client* }
%struct.TYPE_13__ = type { i32 }
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
%struct.i2c_client = type { i32 }

@DVBT_AD_EN_REG = common dso_local global i32 0, align 4
@DVBT_AD_EN_REG1 = common dso_local global i32 0, align 4
@DVBT_RSD_BER_FAIL_VAL = common dso_local global i32 0, align 4
@DVBT_MGD_THD0 = common dso_local global i32 0, align 4
@DVBT_MGD_THD1 = common dso_local global i32 0, align 4
@DVBT_MGD_THD2 = common dso_local global i32 0, align 4
@DVBT_MGD_THD3 = common dso_local global i32 0, align 4
@DVBT_MGD_THD4 = common dso_local global i32 0, align 4
@DVBT_MGD_THD5 = common dso_local global i32 0, align 4
@DVBT_MGD_THD6 = common dso_local global i32 0, align 4
@DVBT_MGD_THD7 = common dso_local global i32 0, align 4
@DVBT_EN_BK_TRK = common dso_local global i32 0, align 4
@DVBT_EN_CACQ_NOTCH = common dso_local global i32 0, align 4
@DVBT_AD_AV_REF = common dso_local global i32 0, align 4
@DVBT_REG_PI = common dso_local global i32 0, align 4
@DVBT_PIP_ON = common dso_local global i32 0, align 4
@DVBT_CDIV_PH0 = common dso_local global i32 0, align 4
@DVBT_CDIV_PH1 = common dso_local global i32 0, align 4
@DVBT_SCALE1_B92 = common dso_local global i32 0, align 4
@DVBT_SCALE1_B93 = common dso_local global i32 0, align 4
@DVBT_SCALE1_BA7 = common dso_local global i32 0, align 4
@DVBT_SCALE1_BA9 = common dso_local global i32 0, align 4
@DVBT_SCALE1_BAA = common dso_local global i32 0, align 4
@DVBT_SCALE1_BAB = common dso_local global i32 0, align 4
@DVBT_SCALE1_BAC = common dso_local global i32 0, align 4
@DVBT_SCALE1_BB0 = common dso_local global i32 0, align 4
@DVBT_SCALE1_BB1 = common dso_local global i32 0, align 4
@DVBT_KB_P1 = common dso_local global i32 0, align 4
@DVBT_KB_P2 = common dso_local global i32 0, align 4
@DVBT_KB_P3 = common dso_local global i32 0, align 4
@DVBT_K1_CR_STEP12 = common dso_local global i32 0, align 4
@DVBT_REG_GPE = common dso_local global i32 0, align 4
@DVBT_SERIAL = common dso_local global i32 0, align 4
@DVBT_MPEG_IO_OPT_2_2 = common dso_local global i32 0, align 4
@DVBT_MPEG_IO_OPT_1_0 = common dso_local global i32 0, align 4
@DVBT_TRK_KS_P2 = common dso_local global i32 0, align 4
@DVBT_TRK_KS_I2 = common dso_local global i32 0, align 4
@DVBT_TR_THD_SET2 = common dso_local global i32 0, align 4
@DVBT_TRK_KC_I2 = common dso_local global i32 0, align 4
@DVBT_CR_THD_SET2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DVBT_SOFT_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"load settings for tuner=%02x\0A\00", align 1
@rtl2832_tuner_init_fc2580 = common dso_local global %struct.rtl2832_reg_value* null, align 8
@rtl2832_tuner_init_fc0012 = common dso_local global %struct.rtl2832_reg_value* null, align 8
@rtl2832_tuner_init_tua9001 = common dso_local global %struct.rtl2832_reg_value* null, align 8
@rtl2832_tuner_init_e4000 = common dso_local global %struct.rtl2832_reg_value* null, align 8
@rtl2832_tuner_init_r820t = common dso_local global %struct.rtl2832_reg_value* null, align 8
@rtl2832_tuner_init_si2157 = common dso_local global %struct.rtl2832_reg_value* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @rtl2832_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.rtl2832_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.rtl2832_reg_value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [42 x %struct.rtl2832_reg_value], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %13, align 8
  store %struct.rtl2832_dev* %14, %struct.rtl2832_dev** %4, align 8
  %15 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %15, i32 0, i32 3
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store %struct.dtv_frontend_properties* %20, %struct.dtv_frontend_properties** %6, align 8
  %21 = getelementptr inbounds [42 x %struct.rtl2832_reg_value], [42 x %struct.rtl2832_reg_value]* %11, i64 0, i64 0
  %22 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %21, i32 0, i32 0
  %23 = load i32, i32* @DVBT_AD_EN_REG, align 4
  store i32 %23, i32* %22, align 16
  %24 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %21, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %21, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %21, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %21, i64 1
  %28 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %27, i32 0, i32 0
  %29 = load i32, i32* @DVBT_AD_EN_REG1, align 4
  store i32 %29, i32* %28, align 16
  %30 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %27, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %27, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %27, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %27, i64 1
  %34 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %33, i32 0, i32 0
  %35 = load i32, i32* @DVBT_RSD_BER_FAIL_VAL, align 4
  store i32 %35, i32* %34, align 16
  %36 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %33, i32 0, i32 1
  store i32 10240, i32* %36, align 4
  %37 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %33, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %33, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %33, i64 1
  %40 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %39, i32 0, i32 0
  %41 = load i32, i32* @DVBT_MGD_THD0, align 4
  store i32 %41, i32* %40, align 16
  %42 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %39, i32 0, i32 1
  store i32 16, i32* %42, align 4
  %43 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %39, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %39, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %39, i64 1
  %46 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %45, i32 0, i32 0
  %47 = load i32, i32* @DVBT_MGD_THD1, align 4
  store i32 %47, i32* %46, align 16
  %48 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %45, i32 0, i32 1
  store i32 32, i32* %48, align 4
  %49 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %45, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %45, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %45, i64 1
  %52 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %51, i32 0, i32 0
  %53 = load i32, i32* @DVBT_MGD_THD2, align 4
  store i32 %53, i32* %52, align 16
  %54 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %51, i32 0, i32 1
  store i32 32, i32* %54, align 4
  %55 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %51, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %51, i32 0, i32 3
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %51, i64 1
  %58 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %57, i32 0, i32 0
  %59 = load i32, i32* @DVBT_MGD_THD3, align 4
  store i32 %59, i32* %58, align 16
  %60 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %57, i32 0, i32 1
  store i32 64, i32* %60, align 4
  %61 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %57, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %57, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %57, i64 1
  %64 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %63, i32 0, i32 0
  %65 = load i32, i32* @DVBT_MGD_THD4, align 4
  store i32 %65, i32* %64, align 16
  %66 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %63, i32 0, i32 1
  store i32 34, i32* %66, align 4
  %67 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %63, i32 0, i32 2
  store i32 0, i32* %67, align 8
  %68 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %63, i32 0, i32 3
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %63, i64 1
  %70 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %69, i32 0, i32 0
  %71 = load i32, i32* @DVBT_MGD_THD5, align 4
  store i32 %71, i32* %70, align 16
  %72 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %69, i32 0, i32 1
  store i32 50, i32* %72, align 4
  %73 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %69, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %69, i32 0, i32 3
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %69, i64 1
  %76 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %75, i32 0, i32 0
  %77 = load i32, i32* @DVBT_MGD_THD6, align 4
  store i32 %77, i32* %76, align 16
  %78 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %75, i32 0, i32 1
  store i32 55, i32* %78, align 4
  %79 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %75, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %75, i32 0, i32 3
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %75, i64 1
  %82 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %81, i32 0, i32 0
  %83 = load i32, i32* @DVBT_MGD_THD7, align 4
  store i32 %83, i32* %82, align 16
  %84 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %81, i32 0, i32 1
  store i32 57, i32* %84, align 4
  %85 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %81, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %81, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %81, i64 1
  %88 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %87, i32 0, i32 0
  %89 = load i32, i32* @DVBT_EN_BK_TRK, align 4
  store i32 %89, i32* %88, align 16
  %90 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %87, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %87, i32 0, i32 2
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %87, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %87, i64 1
  %94 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %93, i32 0, i32 0
  %95 = load i32, i32* @DVBT_EN_CACQ_NOTCH, align 4
  store i32 %95, i32* %94, align 16
  %96 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %93, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %93, i32 0, i32 2
  store i32 0, i32* %97, align 8
  %98 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %93, i32 0, i32 3
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %93, i64 1
  %100 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %99, i32 0, i32 0
  %101 = load i32, i32* @DVBT_AD_AV_REF, align 4
  store i32 %101, i32* %100, align 16
  %102 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %99, i32 0, i32 1
  store i32 42, i32* %102, align 4
  %103 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %99, i32 0, i32 2
  store i32 0, i32* %103, align 8
  %104 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %99, i32 0, i32 3
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %99, i64 1
  %106 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %105, i32 0, i32 0
  %107 = load i32, i32* @DVBT_REG_PI, align 4
  store i32 %107, i32* %106, align 16
  %108 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %105, i32 0, i32 1
  store i32 6, i32* %108, align 4
  %109 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %105, i32 0, i32 2
  store i32 0, i32* %109, align 8
  %110 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %105, i32 0, i32 3
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %105, i64 1
  %112 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %111, i32 0, i32 0
  %113 = load i32, i32* @DVBT_PIP_ON, align 4
  store i32 %113, i32* %112, align 16
  %114 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %111, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %111, i32 0, i32 2
  store i32 0, i32* %115, align 8
  %116 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %111, i32 0, i32 3
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %111, i64 1
  %118 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %117, i32 0, i32 0
  %119 = load i32, i32* @DVBT_CDIV_PH0, align 4
  store i32 %119, i32* %118, align 16
  %120 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %117, i32 0, i32 1
  store i32 8, i32* %120, align 4
  %121 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %117, i32 0, i32 2
  store i32 0, i32* %121, align 8
  %122 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %117, i32 0, i32 3
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %117, i64 1
  %124 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %123, i32 0, i32 0
  %125 = load i32, i32* @DVBT_CDIV_PH1, align 4
  store i32 %125, i32* %124, align 16
  %126 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %123, i32 0, i32 1
  store i32 8, i32* %126, align 4
  %127 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %123, i32 0, i32 2
  store i32 0, i32* %127, align 8
  %128 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %123, i32 0, i32 3
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %123, i64 1
  %130 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %129, i32 0, i32 0
  %131 = load i32, i32* @DVBT_SCALE1_B92, align 4
  store i32 %131, i32* %130, align 16
  %132 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %129, i32 0, i32 1
  store i32 4, i32* %132, align 4
  %133 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %129, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %129, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %129, i64 1
  %136 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %135, i32 0, i32 0
  %137 = load i32, i32* @DVBT_SCALE1_B93, align 4
  store i32 %137, i32* %136, align 16
  %138 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %135, i32 0, i32 1
  store i32 176, i32* %138, align 4
  %139 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %135, i32 0, i32 2
  store i32 0, i32* %139, align 8
  %140 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %135, i32 0, i32 3
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %135, i64 1
  %142 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %141, i32 0, i32 0
  %143 = load i32, i32* @DVBT_SCALE1_BA7, align 4
  store i32 %143, i32* %142, align 16
  %144 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %141, i32 0, i32 1
  store i32 120, i32* %144, align 4
  %145 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %141, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %141, i32 0, i32 3
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %141, i64 1
  %148 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %147, i32 0, i32 0
  %149 = load i32, i32* @DVBT_SCALE1_BA9, align 4
  store i32 %149, i32* %148, align 16
  %150 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %147, i32 0, i32 1
  store i32 40, i32* %150, align 4
  %151 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %147, i32 0, i32 2
  store i32 0, i32* %151, align 8
  %152 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %147, i32 0, i32 3
  store i32 0, i32* %152, align 4
  %153 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %147, i64 1
  %154 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %153, i32 0, i32 0
  %155 = load i32, i32* @DVBT_SCALE1_BAA, align 4
  store i32 %155, i32* %154, align 16
  %156 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %153, i32 0, i32 1
  store i32 89, i32* %156, align 4
  %157 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %153, i32 0, i32 2
  store i32 0, i32* %157, align 8
  %158 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %153, i32 0, i32 3
  store i32 0, i32* %158, align 4
  %159 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %153, i64 1
  %160 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %159, i32 0, i32 0
  %161 = load i32, i32* @DVBT_SCALE1_BAB, align 4
  store i32 %161, i32* %160, align 16
  %162 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %159, i32 0, i32 1
  store i32 131, i32* %162, align 4
  %163 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %159, i32 0, i32 2
  store i32 0, i32* %163, align 8
  %164 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %159, i32 0, i32 3
  store i32 0, i32* %164, align 4
  %165 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %159, i64 1
  %166 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %165, i32 0, i32 0
  %167 = load i32, i32* @DVBT_SCALE1_BAC, align 4
  store i32 %167, i32* %166, align 16
  %168 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %165, i32 0, i32 1
  store i32 212, i32* %168, align 4
  %169 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %165, i32 0, i32 2
  store i32 0, i32* %169, align 8
  %170 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %165, i32 0, i32 3
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %165, i64 1
  %172 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %171, i32 0, i32 0
  %173 = load i32, i32* @DVBT_SCALE1_BB0, align 4
  store i32 %173, i32* %172, align 16
  %174 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %171, i32 0, i32 1
  store i32 101, i32* %174, align 4
  %175 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %171, i32 0, i32 2
  store i32 0, i32* %175, align 8
  %176 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %171, i32 0, i32 3
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %171, i64 1
  %178 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %177, i32 0, i32 0
  %179 = load i32, i32* @DVBT_SCALE1_BB1, align 4
  store i32 %179, i32* %178, align 16
  %180 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %177, i32 0, i32 1
  store i32 67, i32* %180, align 4
  %181 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %177, i32 0, i32 2
  store i32 0, i32* %181, align 8
  %182 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %177, i32 0, i32 3
  store i32 0, i32* %182, align 4
  %183 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %177, i64 1
  %184 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %183, i32 0, i32 0
  %185 = load i32, i32* @DVBT_KB_P1, align 4
  store i32 %185, i32* %184, align 16
  %186 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %183, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %183, i32 0, i32 2
  store i32 0, i32* %187, align 8
  %188 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %183, i32 0, i32 3
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %183, i64 1
  %190 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %189, i32 0, i32 0
  %191 = load i32, i32* @DVBT_KB_P2, align 4
  store i32 %191, i32* %190, align 16
  %192 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %189, i32 0, i32 1
  store i32 4, i32* %192, align 4
  %193 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %189, i32 0, i32 2
  store i32 0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %189, i32 0, i32 3
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %189, i64 1
  %196 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %195, i32 0, i32 0
  %197 = load i32, i32* @DVBT_KB_P3, align 4
  store i32 %197, i32* %196, align 16
  %198 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %195, i32 0, i32 1
  store i32 7, i32* %198, align 4
  %199 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %195, i32 0, i32 2
  store i32 0, i32* %199, align 8
  %200 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %195, i32 0, i32 3
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %195, i64 1
  %202 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %201, i32 0, i32 0
  %203 = load i32, i32* @DVBT_K1_CR_STEP12, align 4
  store i32 %203, i32* %202, align 16
  %204 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %201, i32 0, i32 1
  store i32 10, i32* %204, align 4
  %205 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %201, i32 0, i32 2
  store i32 0, i32* %205, align 8
  %206 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %201, i32 0, i32 3
  store i32 0, i32* %206, align 4
  %207 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %201, i64 1
  %208 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %207, i32 0, i32 0
  %209 = load i32, i32* @DVBT_REG_GPE, align 4
  store i32 %209, i32* %208, align 16
  %210 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %207, i32 0, i32 1
  store i32 1, i32* %210, align 4
  %211 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %207, i32 0, i32 2
  store i32 0, i32* %211, align 8
  %212 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %207, i32 0, i32 3
  store i32 0, i32* %212, align 4
  %213 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %207, i64 1
  %214 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %213, i32 0, i32 0
  %215 = load i32, i32* @DVBT_SERIAL, align 4
  store i32 %215, i32* %214, align 16
  %216 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %213, i32 0, i32 1
  store i32 0, i32* %216, align 4
  %217 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %213, i32 0, i32 2
  store i32 0, i32* %217, align 8
  %218 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %213, i32 0, i32 3
  store i32 0, i32* %218, align 4
  %219 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %213, i64 1
  %220 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %219, i32 0, i32 0
  %221 = load i32, i32* @DVBT_CDIV_PH0, align 4
  store i32 %221, i32* %220, align 16
  %222 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %219, i32 0, i32 1
  store i32 9, i32* %222, align 4
  %223 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %219, i32 0, i32 2
  store i32 0, i32* %223, align 8
  %224 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %219, i32 0, i32 3
  store i32 0, i32* %224, align 4
  %225 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %219, i64 1
  %226 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %225, i32 0, i32 0
  %227 = load i32, i32* @DVBT_CDIV_PH1, align 4
  store i32 %227, i32* %226, align 16
  %228 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %225, i32 0, i32 1
  store i32 9, i32* %228, align 4
  %229 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %225, i32 0, i32 2
  store i32 0, i32* %229, align 8
  %230 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %225, i32 0, i32 3
  store i32 0, i32* %230, align 4
  %231 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %225, i64 1
  %232 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %231, i32 0, i32 0
  %233 = load i32, i32* @DVBT_MPEG_IO_OPT_2_2, align 4
  store i32 %233, i32* %232, align 16
  %234 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %231, i32 0, i32 1
  store i32 0, i32* %234, align 4
  %235 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %231, i32 0, i32 2
  store i32 0, i32* %235, align 8
  %236 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %231, i32 0, i32 3
  store i32 0, i32* %236, align 4
  %237 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %231, i64 1
  %238 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %237, i32 0, i32 0
  %239 = load i32, i32* @DVBT_MPEG_IO_OPT_1_0, align 4
  store i32 %239, i32* %238, align 16
  %240 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %237, i32 0, i32 1
  store i32 0, i32* %240, align 4
  %241 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %237, i32 0, i32 2
  store i32 0, i32* %241, align 8
  %242 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %237, i32 0, i32 3
  store i32 0, i32* %242, align 4
  %243 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %237, i64 1
  %244 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %243, i32 0, i32 0
  %245 = load i32, i32* @DVBT_TRK_KS_P2, align 4
  store i32 %245, i32* %244, align 16
  %246 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %243, i32 0, i32 1
  store i32 4, i32* %246, align 4
  %247 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %243, i32 0, i32 2
  store i32 0, i32* %247, align 8
  %248 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %243, i32 0, i32 3
  store i32 0, i32* %248, align 4
  %249 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %243, i64 1
  %250 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %249, i32 0, i32 0
  %251 = load i32, i32* @DVBT_TRK_KS_I2, align 4
  store i32 %251, i32* %250, align 16
  %252 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %249, i32 0, i32 1
  store i32 7, i32* %252, align 4
  %253 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %249, i32 0, i32 2
  store i32 0, i32* %253, align 8
  %254 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %249, i32 0, i32 3
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %249, i64 1
  %256 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %255, i32 0, i32 0
  %257 = load i32, i32* @DVBT_TR_THD_SET2, align 4
  store i32 %257, i32* %256, align 16
  %258 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %255, i32 0, i32 1
  store i32 6, i32* %258, align 4
  %259 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %255, i32 0, i32 2
  store i32 0, i32* %259, align 8
  %260 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %255, i32 0, i32 3
  store i32 0, i32* %260, align 4
  %261 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %255, i64 1
  %262 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %261, i32 0, i32 0
  %263 = load i32, i32* @DVBT_TRK_KC_I2, align 4
  store i32 %263, i32* %262, align 16
  %264 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %261, i32 0, i32 1
  store i32 5, i32* %264, align 4
  %265 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %261, i32 0, i32 2
  store i32 0, i32* %265, align 8
  %266 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %261, i32 0, i32 3
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %261, i64 1
  %268 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %267, i32 0, i32 0
  %269 = load i32, i32* @DVBT_CR_THD_SET2, align 4
  store i32 %269, i32* %268, align 16
  %270 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %267, i32 0, i32 1
  store i32 1, i32* %270, align 4
  %271 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %267, i32 0, i32 2
  store i32 0, i32* %271, align 8
  %272 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %267, i32 0, i32 3
  store i32 0, i32* %272, align 4
  %273 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %274 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %273, i32 0, i32 0
  %275 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %274, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %276 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %277 = load i32, i32* @DVBT_SOFT_RST, align 4
  %278 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %276, i32 %277, i32 0)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %1
  br label %419

282:                                              ; preds = %1
  store i32 0, i32* %8, align 4
  br label %283

283:                                              ; preds = %305, %282
  %284 = load i32, i32* %8, align 4
  %285 = getelementptr inbounds [42 x %struct.rtl2832_reg_value], [42 x %struct.rtl2832_reg_value]* %11, i64 0, i64 0
  %286 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %285)
  %287 = icmp slt i32 %284, %286
  br i1 %287, label %288, label %308

288:                                              ; preds = %283
  %289 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [42 x %struct.rtl2832_reg_value], [42 x %struct.rtl2832_reg_value]* %11, i64 0, i64 %291
  %293 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [42 x %struct.rtl2832_reg_value], [42 x %struct.rtl2832_reg_value]* %11, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %289, i32 %294, i32 %299)
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %288
  br label %419

304:                                              ; preds = %288
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %8, align 4
  br label %283

308:                                              ; preds = %283
  %309 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %310 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %309, i32 0, i32 0
  %311 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %312 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %311, i32 0, i32 1
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %310, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %315)
  %317 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %318 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %317, i32 0, i32 1
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  switch i32 %321, label %346 [
    i32 132, label %322
    i32 134, label %326
    i32 133, label %326
    i32 128, label %330
    i32 135, label %334
    i32 131, label %338
    i32 130, label %338
    i32 129, label %342
  ]

322:                                              ; preds = %308
  %323 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_fc2580, align 8
  %324 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %323)
  store i32 %324, i32* %10, align 4
  %325 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_fc2580, align 8
  store %struct.rtl2832_reg_value* %325, %struct.rtl2832_reg_value** %7, align 8
  br label %349

326:                                              ; preds = %308, %308
  %327 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_fc0012, align 8
  %328 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %327)
  store i32 %328, i32* %10, align 4
  %329 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_fc0012, align 8
  store %struct.rtl2832_reg_value* %329, %struct.rtl2832_reg_value** %7, align 8
  br label %349

330:                                              ; preds = %308
  %331 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_tua9001, align 8
  %332 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %331)
  store i32 %332, i32* %10, align 4
  %333 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_tua9001, align 8
  store %struct.rtl2832_reg_value* %333, %struct.rtl2832_reg_value** %7, align 8
  br label %349

334:                                              ; preds = %308
  %335 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_e4000, align 8
  %336 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %335)
  store i32 %336, i32* %10, align 4
  %337 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_e4000, align 8
  store %struct.rtl2832_reg_value* %337, %struct.rtl2832_reg_value** %7, align 8
  br label %349

338:                                              ; preds = %308, %308
  %339 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_r820t, align 8
  %340 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %339)
  store i32 %340, i32* %10, align 4
  %341 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_r820t, align 8
  store %struct.rtl2832_reg_value* %341, %struct.rtl2832_reg_value** %7, align 8
  br label %349

342:                                              ; preds = %308
  %343 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_si2157, align 8
  %344 = call i32 @ARRAY_SIZE(%struct.rtl2832_reg_value* %343)
  store i32 %344, i32* %10, align 4
  %345 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** @rtl2832_tuner_init_si2157, align 8
  store %struct.rtl2832_reg_value* %345, %struct.rtl2832_reg_value** %7, align 8
  br label %349

346:                                              ; preds = %308
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %9, align 4
  br label %419

349:                                              ; preds = %342, %338, %334, %330, %326, %322
  store i32 0, i32* %8, align 4
  br label %350

350:                                              ; preds = %373, %349
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* %10, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %376

354:                                              ; preds = %350
  %355 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %356 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** %7, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %356, i64 %358
  %360 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.rtl2832_reg_value*, %struct.rtl2832_reg_value** %7, align 8
  %363 = load i32, i32* %8, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %362, i64 %364
  %366 = getelementptr inbounds %struct.rtl2832_reg_value, %struct.rtl2832_reg_value* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev* %355, i32 %361, i32 %367)
  store i32 %368, i32* %9, align 4
  %369 = load i32, i32* %9, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %354
  br label %419

372:                                              ; preds = %354
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %8, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %8, align 4
  br label %350

376:                                              ; preds = %350
  %377 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %378 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 0
  store i32 1, i32* %379, align 8
  %380 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %381 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %382 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i64 0
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 0
  store i8* %380, i8** %386, align 8
  %387 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %388 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 0
  store i32 1, i32* %389, align 8
  %390 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %391 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %392 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i64 0
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 0
  store i8* %390, i8** %396, align 8
  %397 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %398 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 0
  store i32 1, i32* %399, align 8
  %400 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %401 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %402 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 1
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i64 0
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 0
  store i8* %400, i8** %406, align 8
  %407 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %408 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 0
  store i32 1, i32* %409, align 8
  %410 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %411 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %412 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_20__*, %struct.TYPE_20__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 0
  store i8* %410, i8** %416, align 8
  %417 = load %struct.rtl2832_dev*, %struct.rtl2832_dev** %4, align 8
  %418 = getelementptr inbounds %struct.rtl2832_dev, %struct.rtl2832_dev* %417, i32 0, i32 0
  store i32 0, i32* %418, align 8
  store i32 0, i32* %2, align 4
  br label %425

419:                                              ; preds = %371, %346, %303, %281
  %420 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %421 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %420, i32 0, i32 0
  %422 = load i32, i32* %9, align 4
  %423 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %421, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %422)
  %424 = load i32, i32* %9, align 4
  store i32 %424, i32* %2, align 4
  br label %425

425:                                              ; preds = %419, %376
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @rtl2832_wr_demod_reg(%struct.rtl2832_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rtl2832_reg_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
