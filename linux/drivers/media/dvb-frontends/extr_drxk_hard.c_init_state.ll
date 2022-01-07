; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxk_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i8*, i8*, i64, i64, i64, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, i8*, i8*, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i8* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i8* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i8* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i64, i8* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64 }

@DRXK_AGC_CTRL_AUTO = common dso_local global i8* null, align 8
@DRXK_AGC_CTRL_OFF = common dso_local global i8* null, align 8
@DEFAULT_MER_83 = common dso_local global i8* null, align 8
@DEFAULT_MER_93 = common dso_local global i8* null, align 8
@DEFAULT_DRXK_MPEG_LOCK_TIMEOUT = common dso_local global i8* null, align 8
@DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT = common dso_local global i8* null, align 8
@DRXK_MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH = common dso_local global i64 0, align 8
@DRXK_QAM_SYMBOLRATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HI_I2C_DELAY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_2_CFG_DIV__M = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE = common dso_local global i32 0, align 4
@OM_NONE = common dso_local global i32 0, align 4
@DRXK_UNINITIALIZED = common dso_local global i32 0, align 4
@DRX_CONSTELLATION_AUTO = common dso_local global i32 0, align 4
@DRXK_QAM_I12_J17 = common dso_local global i32 0, align 4
@DRXK_DVBT_SQI_SPEED_MEDIUM = common dso_local global i32 0, align 4
@DRX_POWER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxk_state*)* @init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_state(%struct.drxk_state* %0) #0 {
  %2 = alloca %struct.drxk_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  store %struct.drxk_state* %0, %struct.drxk_state** %2, align 8
  %39 = load i8*, i8** @DRXK_AGC_CTRL_AUTO, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 32767, i64* %6, align 8
  store i64 3, i64* %7, align 8
  %41 = load i8*, i8** @DRXK_AGC_CTRL_AUTO, align 8
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 32767, i64* %11, align 8
  store i64 3, i64* %12, align 8
  store i64 9500, i64* %13, align 8
  store i64 4000, i64* %14, align 8
  %43 = load i8*, i8** @DRXK_AGC_CTRL_AUTO, align 8
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 3, i64* %19, align 8
  %45 = load i8*, i8** @DRXK_AGC_CTRL_OFF, align 8
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 9500, i64* %24, align 8
  store i64 4000, i64* %25, align 8
  store i64 3, i64* %26, align 8
  %47 = load i8*, i8** @DEFAULT_MER_83, align 8
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %27, align 8
  %49 = load i8*, i8** @DEFAULT_MER_93, align 8
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %28, align 8
  %51 = load i8*, i8** @DEFAULT_DRXK_MPEG_LOCK_TIMEOUT, align 8
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %29, align 8
  %53 = load i8*, i8** @DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT, align 8
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %30, align 8
  store i64 275, i64* %31, align 8
  store i64 0, i64* %32, align 8
  %55 = load i64, i64* @DRXK_MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH, align 8
  store i64 %55, i64* %33, align 8
  store i64 50000000, i64* %34, align 8
  %56 = load i32, i32* @DRXK_QAM_SYMBOLRATE_MAX, align 4
  %57 = mul nsw i32 %56, 8
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store i64 1, i64* %37, align 8
  store i64 0, i64* %38, align 8
  %59 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %61 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %63 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %65 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %67 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %69 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %68, i32 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %71 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %70, i32 0, i32 5
  store i32 0, i32* %71, align 4
  %72 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %73 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %1
  %77 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %78 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %77, i32 0, i32 6
  store i32 124, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %1
  %80 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %81 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %80, i32 0, i32 58
  store i64 0, i64* %81, align 8
  %82 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %83 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %82, i32 0, i32 7
  store i32 0, i32* %83, align 4
  %84 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %85 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %84, i32 0, i32 8
  store i32 0, i32* %85, align 8
  %86 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %87 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %86, i32 0, i32 9
  store i32 151875, i32* %87, align 4
  %88 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %89 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 1000
  %92 = load i32, i32* @HI_I2C_DELAY, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sdiv i32 %93, 1000
  %95 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %96 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 8
  %97 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %98 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_CFG_DIV__M, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %79
  %103 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_CFG_DIV__M, align 4
  %104 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %105 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %79
  %107 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %108 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 1
  %111 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %112 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE, align 4
  %114 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %115 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %114, i32 0, i32 57
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %38, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %120 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 4
  %121 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %122 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %121, i32 0, i32 14
  store i32 0, i32* %122, align 8
  %123 = load i64, i64* %3, align 8
  %124 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %125 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %124, i32 0, i32 56
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %129 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %128, i32 0, i32 56
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 3
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %133 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %132, i32 0, i32 56
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %6, align 8
  %136 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %137 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %136, i32 0, i32 56
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %141 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %140, i32 0, i32 56
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %144 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %143, i32 0, i32 15
  store i32 140, i32* %144, align 4
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %147 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %146, i32 0, i32 55
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 6
  store i64 %145, i64* %148, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %151 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %150, i32 0, i32 55
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 5
  store i64 %149, i64* %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %155 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %154, i32 0, i32 55
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 4
  store i64 %153, i64* %156, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %159 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %158, i32 0, i32 55
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  store i64 %157, i64* %160, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %163 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %162, i32 0, i32 55
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  store i64 %161, i64* %164, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %167 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %166, i32 0, i32 55
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 1
  store i64 %165, i64* %168, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %171 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %170, i32 0, i32 55
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  %173 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %174 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %173, i32 0, i32 54
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  store i32 7, i32* %175, align 8
  %176 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %177 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %176, i32 0, i32 54
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load i8*, i8** @DEFAULT_MER_83, align 8
  %180 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %181 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %180, i32 0, i32 53
  store i8* %179, i8** %181, align 8
  %182 = load i8*, i8** @DEFAULT_MER_93, align 8
  %183 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %184 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %183, i32 0, i32 52
  store i8* %182, i8** %184, align 8
  %185 = load i64, i64* %28, align 8
  %186 = icmp sle i64 %185, 500
  br i1 %186, label %187, label %200

187:                                              ; preds = %106
  %188 = load i64, i64* %27, align 8
  %189 = load i64, i64* %28, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i64, i64* %27, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %195 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %194, i32 0, i32 53
  store i8* %193, i8** %195, align 8
  %196 = load i64, i64* %28, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %199 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %198, i32 0, i32 52
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %191, %187, %106
  %201 = load i64, i64* %15, align 8
  %202 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %203 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %202, i32 0, i32 51
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 4
  store i64 %201, i64* %204, align 8
  %205 = load i64, i64* %16, align 8
  %206 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %207 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %206, i32 0, i32 51
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 3
  store i64 %205, i64* %208, align 8
  %209 = load i64, i64* %17, align 8
  %210 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %211 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %210, i32 0, i32 51
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 2
  store i64 %209, i64* %212, align 8
  %213 = load i64, i64* %18, align 8
  %214 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %215 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %214, i32 0, i32 51
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 1
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* %19, align 8
  %218 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %219 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %218, i32 0, i32 51
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  store i64 %217, i64* %220, align 8
  %221 = load i64, i64* %20, align 8
  %222 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %223 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %222, i32 0, i32 50
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 6
  store i64 %221, i64* %224, align 8
  %225 = load i64, i64* %21, align 8
  %226 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %227 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %226, i32 0, i32 50
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 5
  store i64 %225, i64* %228, align 8
  %229 = load i64, i64* %22, align 8
  %230 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %231 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %230, i32 0, i32 50
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 4
  store i64 %229, i64* %232, align 8
  %233 = load i64, i64* %23, align 8
  %234 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %235 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %234, i32 0, i32 50
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 3
  store i64 %233, i64* %236, align 8
  %237 = load i64, i64* %26, align 8
  %238 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %239 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %238, i32 0, i32 50
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 2
  store i64 %237, i64* %240, align 8
  %241 = load i64, i64* %24, align 8
  %242 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %243 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %242, i32 0, i32 50
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %25, align 8
  %246 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %247 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %246, i32 0, i32 50
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  store i64 %245, i64* %248, align 8
  %249 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %250 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %249, i32 0, i32 49
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  store i32 4, i32* %251, align 8
  %252 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %253 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %252, i32 0, i32 49
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 4
  %255 = load i8*, i8** @DRXK_AGC_CTRL_OFF, align 8
  %256 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %257 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %256, i32 0, i32 48
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 6
  store i8* %255, i8** %258, align 8
  %259 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %260 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %259, i32 0, i32 48
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 5
  store i64 0, i64* %261, align 8
  %262 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %263 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %262, i32 0, i32 48
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 4
  store i64 0, i64* %264, align 8
  %265 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %266 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %265, i32 0, i32 48
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  store i32 65535, i32* %267, align 8
  %268 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %269 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %268, i32 0, i32 48
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 1
  store i32 8448, i32* %270, align 4
  %271 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %272 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %271, i32 0, i32 48
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 2
  store i32 4000, i32* %273, align 8
  %274 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %275 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %274, i32 0, i32 48
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 3
  store i32 1, i32* %276, align 4
  %277 = load i8*, i8** @DRXK_AGC_CTRL_AUTO, align 8
  %278 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %279 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %278, i32 0, i32 47
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 8
  store i8* %277, i8** %280, align 8
  %281 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %282 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %281, i32 0, i32 47
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 7
  store i64 0, i64* %283, align 8
  %284 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %285 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %284, i32 0, i32 47
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 6
  store i64 0, i64* %286, align 8
  %287 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %288 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %287, i32 0, i32 47
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  store i32 9000, i32* %289, align 8
  %290 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %291 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %290, i32 0, i32 47
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 1
  store i32 13424, i32* %292, align 4
  %293 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %294 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %293, i32 0, i32 47
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 5
  store i64 0, i64* %295, align 8
  %296 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %297 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %296, i32 0, i32 47
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 2
  store i32 3, i32* %298, align 8
  %299 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %300 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %299, i32 0, i32 47
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 3
  store i32 30, i32* %301, align 4
  %302 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %303 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %302, i32 0, i32 47
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 4
  store i32 30000, i32* %304, align 8
  %305 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %306 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %305, i32 0, i32 46
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 0
  store i32 4, i32* %307, align 8
  %308 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %309 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %308, i32 0, i32 46
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 1
  store i32 0, i32* %310, align 4
  %311 = load i8*, i8** @DRXK_AGC_CTRL_OFF, align 8
  %312 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %313 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %312, i32 0, i32 45
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 6
  store i8* %311, i8** %314, align 8
  %315 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %316 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %315, i32 0, i32 45
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 5
  store i64 0, i64* %317, align 8
  %318 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %319 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %318, i32 0, i32 45
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  store i32 6023, i32* %320, align 8
  %321 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %322 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %321, i32 0, i32 45
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 1
  store i32 27000, i32* %323, align 4
  %324 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %325 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %324, i32 0, i32 45
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 2
  store i32 9088, i32* %326, align 8
  %327 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %328 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %327, i32 0, i32 45
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 3
  store i32 4000, i32* %329, align 4
  %330 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %331 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %330, i32 0, i32 45
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 4
  store i32 3, i32* %332, align 8
  %333 = load i8*, i8** @DRXK_AGC_CTRL_AUTO, align 8
  %334 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %335 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %334, i32 0, i32 44
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 8
  store i8* %333, i8** %336, align 8
  %337 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %338 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %337, i32 0, i32 44
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 7
  store i64 0, i64* %339, align 8
  %340 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %341 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %340, i32 0, i32 44
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 6
  store i64 0, i64* %342, align 8
  %343 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %344 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %343, i32 0, i32 44
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  store i32 9000, i32* %345, align 8
  %346 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %347 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %346, i32 0, i32 44
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  store i32 1297, i32* %348, align 4
  %349 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %350 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %349, i32 0, i32 44
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 5
  store i64 0, i64* %351, align 8
  %352 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %353 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %352, i32 0, i32 44
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 2
  store i32 3, i32* %354, align 8
  %355 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %356 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %355, i32 0, i32 44
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 3
  store i32 5119, i32* %357, align 4
  %358 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %359 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %358, i32 0, i32 44
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 4
  store i32 50, i32* %360, align 8
  %361 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %362 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %361, i32 0, i32 16
  store i32 140, i32* %362, align 8
  %363 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %364 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %363, i32 0, i32 43
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 0
  store i32 4, i32* %365, align 8
  %366 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %367 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %366, i32 0, i32 43
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 1
  store i32 0, i32* %368, align 4
  %369 = load i32, i32* @OM_NONE, align 4
  %370 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %371 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %370, i32 0, i32 42
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* @DRXK_UNINITIALIZED, align 4
  %373 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %374 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %373, i32 0, i32 41
  store i32 %372, i32* %374, align 8
  %375 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %376 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %375, i32 0, i32 17
  store i32 1, i32* %376, align 4
  %377 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %378 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %377, i32 0, i32 18
  store i32 0, i32* %378, align 8
  %379 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %380 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %379, i32 0, i32 19
  store i32 0, i32* %380, align 4
  %381 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %382 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %381, i32 0, i32 20
  store i32 0, i32* %382, align 8
  %383 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %384 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %383, i32 0, i32 21
  store i32 0, i32* %384, align 4
  %385 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %386 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %385, i32 0, i32 22
  store i32 0, i32* %386, align 8
  %387 = load i64, i64* %32, align 8
  %388 = icmp ne i64 %387, 0
  %389 = zext i1 %388 to i32
  %390 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %391 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %390, i32 0, i32 23
  store i32 %389, i32* %391, align 4
  %392 = load i64, i64* %34, align 8
  %393 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %394 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %393, i32 0, i32 40
  store i64 %392, i64* %394, align 8
  %395 = load i64, i64* %35, align 8
  %396 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %397 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %396, i32 0, i32 39
  store i64 %395, i64* %397, align 8
  %398 = load i64, i64* %33, align 8
  %399 = and i64 %398, 7
  %400 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %401 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %400, i32 0, i32 38
  store i64 %399, i64* %401, align 8
  %402 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %403 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %402, i32 0, i32 24
  store i32 19392658, i32* %403, align 8
  %404 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %405 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %404, i32 0, i32 25
  store i32 0, i32* %405, align 4
  %406 = load i64, i64* %36, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %200
  %409 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %410 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %409, i32 0, i32 18
  store i32 1, i32* %410, align 8
  br label %411

411:                                              ; preds = %408, %200
  %412 = load i8*, i8** @DEFAULT_DRXK_MPEG_LOCK_TIMEOUT, align 8
  %413 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %414 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %413, i32 0, i32 37
  store i8* %412, i8** %414, align 8
  %415 = load i64, i64* %29, align 8
  %416 = icmp slt i64 %415, 10000
  br i1 %416, label %417, label %422

417:                                              ; preds = %411
  %418 = load i64, i64* %29, align 8
  %419 = inttoptr i64 %418 to i8*
  %420 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %421 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %420, i32 0, i32 37
  store i8* %419, i8** %421, align 8
  br label %422

422:                                              ; preds = %417, %411
  %423 = load i8*, i8** @DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT, align 8
  %424 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %425 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %424, i32 0, i32 36
  store i8* %423, i8** %425, align 8
  %426 = load i64, i64* %30, align 8
  %427 = icmp slt i64 %426, 10000
  br i1 %427, label %428, label %433

428:                                              ; preds = %422
  %429 = load i64, i64* %30, align 8
  %430 = inttoptr i64 %429 to i8*
  %431 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %432 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %431, i32 0, i32 36
  store i8* %430, i8** %432, align 8
  br label %433

433:                                              ; preds = %428, %422
  %434 = load i32, i32* @DRX_CONSTELLATION_AUTO, align 4
  %435 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %436 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %435, i32 0, i32 35
  store i32 %434, i32* %436, align 8
  %437 = load i32, i32* @DRXK_QAM_I12_J17, align 4
  %438 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %439 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %438, i32 0, i32 34
  store i32 %437, i32* %439, align 4
  %440 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %441 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %440, i32 0, i32 26
  store i32 1632, i32* %441, align 8
  %442 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %443 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %442, i32 0, i32 27
  store i32 1, i32* %443, align 4
  %444 = load i32, i32* @DRXK_DVBT_SQI_SPEED_MEDIUM, align 4
  %445 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %446 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %445, i32 0, i32 33
  store i32 %444, i32* %446, align 8
  %447 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %448 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %447, i32 0, i32 32
  store i64 0, i64* %448, align 8
  %449 = load i64, i64* %31, align 8
  %450 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %451 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %450, i32 0, i32 31
  store i64 %449, i64* %451, align 8
  %452 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %453 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %452, i32 0, i32 13
  store i32 0, i32* %453, align 4
  %454 = load i32, i32* @DRX_POWER_DOWN, align 4
  %455 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %456 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %455, i32 0, i32 30
  store i32 %454, i32* %456, align 8
  %457 = load i64, i64* %37, align 8
  %458 = icmp eq i64 %457, 0
  %459 = zext i1 %458 to i32
  %460 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %461 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %460, i32 0, i32 28
  store i32 %459, i32* %461, align 8
  %462 = load %struct.drxk_state*, %struct.drxk_state** %2, align 8
  %463 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %462, i32 0, i32 29
  store i32 0, i32* %463, align 4
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
