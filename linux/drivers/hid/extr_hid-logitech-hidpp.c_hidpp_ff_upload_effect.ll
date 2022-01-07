; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_upload_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_ff_upload_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.hidpp_ff_private_data* }
%struct.hidpp_ff_private_data = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.ff_effect = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@HIDPP_FF_EFFECT_CONSTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Uploading constant force level=%d in dir %d = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"          envelope attack=(%d, %d ms) fade=(%d, %d ms)\0A\00", align 1
@HIDPP_FF_EFFECT_PERIODIC_SINE = common dso_local global i32 0, align 4
@HIDPP_FF_EFFECT_PERIODIC_SQUARE = common dso_local global i32 0, align 4
@HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHUP = common dso_local global i32 0, align 4
@HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHDOWN = common dso_local global i32 0, align 4
@HIDPP_FF_EFFECT_PERIODIC_TRIANGLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unexpected periodic waveform type %i!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"Uploading periodic force mag=%d/dir=%d, offset=%d, period=%d ms, phase=%d\0A\00", align 1
@HIDPP_FF_EFFECT_RAMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Uploading ramp force level=%d -> %d in dir %d = %d\0A\00", align 1
@HIDPP_FF_CONDITION_CMDS = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [77 x i8] c"Uploading %s force left coeff=%d, left sat=%d, right coeff=%d, right sat=%d\0A\00", align 1
@HIDPP_FF_CONDITION_NAMES = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"          deadband=%d, center=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected force type %i!\0A\00", align 1
@HIDPP_FF_DOWNLOAD_EFFECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @hidpp_ff_upload_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_ff_upload_effect(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca %struct.hidpp_ff_private_data*, align 8
  %9 = alloca [20 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %15, align 8
  store %struct.hidpp_ff_private_data* %16, %struct.hidpp_ff_private_data** %8, align 8
  %17 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %18 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 8
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %30 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 4
  store i32 %33, i32* %34, align 16
  %35 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %42 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %653 [
    i32 139, label %44
    i32 135, label %149
    i32 134, label %351
    i32 137, label %480
    i32 136, label %480
    i32 130, label %480
    i32 138, label %480
  ]

44:                                               ; preds = %3
  %45 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %46 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %51 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 360
  %54 = ashr i32 %53, 16
  %55 = call i32 @fixp_sin16(i32 %54)
  %56 = mul nsw i32 %49, %55
  %57 = ashr i32 %56, 15
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @HIDPP_FF_EFFECT_CONSTANT, align 4
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = ashr i32 %60, 8
  %62 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 6
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 7
  store i32 %64, i32* %65, align 4
  %66 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %67 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 7
  %73 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 8
  store i32 %72, i32* %73, align 16
  %74 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %75 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 9
  store i32 %80, i32* %81, align 4
  %82 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %83 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  %89 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 10
  store i32 %88, i32* %89, align 8
  %90 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %91 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 7
  %97 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 11
  store i32 %96, i32* %97, align 4
  %98 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %99 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 8
  %105 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 12
  store i32 %104, i32* %105, align 16
  %106 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %107 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 255
  %113 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 13
  store i32 %112, i32* %113, align 4
  store i32 14, i32* %10, align 4
  %114 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %115 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %120 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %122)
  %124 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %125 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %131 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %137 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %143 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %135, i32 %141, i32 %147)
  br label %665

149:                                              ; preds = %3
  %150 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %151 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %170 [
    i32 131, label %155
    i32 129, label %158
    i32 132, label %161
    i32 133, label %164
    i32 128, label %167
  ]

155:                                              ; preds = %149
  %156 = load i32, i32* @HIDPP_FF_EFFECT_PERIODIC_SINE, align 4
  %157 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  br label %184

158:                                              ; preds = %149
  %159 = load i32, i32* @HIDPP_FF_EFFECT_PERIODIC_SQUARE, align 4
  %160 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  br label %184

161:                                              ; preds = %149
  %162 = load i32, i32* @HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHUP, align 4
  %163 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  br label %184

164:                                              ; preds = %149
  %165 = load i32, i32* @HIDPP_FF_EFFECT_PERIODIC_SAWTOOTHDOWN, align 4
  %166 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %165, i32* %166, align 4
  br label %184

167:                                              ; preds = %149
  %168 = load i32, i32* @HIDPP_FF_EFFECT_PERIODIC_TRIANGLE, align 4
  %169 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %168, i32* %169, align 4
  br label %184

170:                                              ; preds = %149
  %171 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %8, align 8
  %172 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %177 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @hid_err(i32 %175, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %674

184:                                              ; preds = %167, %164, %161, %158, %155
  %185 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %186 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %191 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %192, 360
  %194 = ashr i32 %193, 16
  %195 = call i32 @fixp_sin16(i32 %194)
  %196 = mul nsw i32 %189, %195
  %197 = ashr i32 %196, 15
  store i32 %197, i32* %11, align 4
  %198 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %199 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %202, 8
  %204 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 6
  store i32 %203, i32* %204, align 8
  %205 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %206 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 255
  %211 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 7
  store i32 %210, i32* %211, align 4
  %212 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %213 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = ashr i32 %216, 8
  %218 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 8
  store i32 %217, i32* %218, align 16
  %219 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %220 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, 255
  %225 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 9
  store i32 %224, i32* %225, align 4
  %226 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %227 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 8
  %232 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 10
  store i32 %231, i32* %232, align 8
  %233 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %234 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, 255
  %239 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 11
  store i32 %238, i32* %239, align 4
  %240 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %241 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = ashr i32 %244, 8
  %246 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 12
  store i32 %245, i32* %246, align 16
  %247 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %248 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, 255
  %253 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 13
  store i32 %252, i32* %253, align 4
  %254 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %255 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = ashr i32 %259, 7
  %261 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 14
  store i32 %260, i32* %261, align 8
  %262 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %263 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 8
  %269 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 15
  store i32 %268, i32* %269, align 4
  %270 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %271 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, 255
  %277 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 16
  store i32 %276, i32* %277, align 16
  %278 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %279 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = ashr i32 %283, 7
  %285 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 17
  store i32 %284, i32* %285, align 4
  %286 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %287 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = ashr i32 %291, 8
  %293 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 18
  store i32 %292, i32* %293, align 8
  %294 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %295 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = and i32 %299, 255
  %301 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 19
  store i32 %300, i32* %301, align 4
  store i32 20, i32* %10, align 4
  %302 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %303 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %308 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %311 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %316 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %321 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %320, i32 0, i32 3
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %306, i32 %309, i32 %314, i32 %319, i32 %324)
  %326 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %327 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %333 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %339 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %345 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %331, i32 %337, i32 %343, i32 %349)
  br label %665

351:                                              ; preds = %3
  %352 = load i32, i32* @HIDPP_FF_EFFECT_RAMP, align 4
  %353 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %352, i32* %353, align 4
  %354 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %355 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %354, i32 0, i32 3
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %360 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = mul nsw i32 %361, 360
  %363 = ashr i32 %362, 16
  %364 = call i32 @fixp_sin16(i32 %363)
  %365 = mul nsw i32 %358, %364
  %366 = ashr i32 %365, 15
  store i32 %366, i32* %11, align 4
  %367 = load i32, i32* %11, align 4
  %368 = ashr i32 %367, 8
  %369 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 6
  store i32 %368, i32* %369, align 8
  %370 = load i32, i32* %11, align 4
  %371 = and i32 %370, 255
  %372 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 7
  store i32 %371, i32* %372, align 4
  %373 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %374 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %379 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = mul nsw i32 %380, 360
  %382 = ashr i32 %381, 16
  %383 = call i32 @fixp_sin16(i32 %382)
  %384 = mul nsw i32 %377, %383
  %385 = ashr i32 %384, 15
  store i32 %385, i32* %11, align 4
  %386 = load i32, i32* %11, align 4
  %387 = ashr i32 %386, 8
  %388 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 8
  store i32 %387, i32* %388, align 16
  %389 = load i32, i32* %11, align 4
  %390 = and i32 %389, 255
  %391 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 9
  store i32 %390, i32* %391, align 4
  %392 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %393 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = ashr i32 %397, 7
  %399 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 10
  store i32 %398, i32* %399, align 8
  %400 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %401 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = ashr i32 %405, 8
  %407 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 11
  store i32 %406, i32* %407, align 4
  %408 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %409 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %408, i32 0, i32 3
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = and i32 %413, 255
  %415 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 12
  store i32 %414, i32* %415, align 16
  %416 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %417 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = ashr i32 %421, 7
  %423 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 13
  store i32 %422, i32* %423, align 4
  %424 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %425 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = ashr i32 %429, 8
  %431 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 14
  store i32 %430, i32* %431, align 8
  %432 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %433 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = and i32 %437, 255
  %439 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 15
  store i32 %438, i32* %439, align 4
  store i32 16, i32* %10, align 4
  %440 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %441 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %440, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %446 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %451 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %11, align 4
  %454 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %444, i32 %449, i32 %452, i32 %453)
  %455 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %456 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %462 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %468 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %474 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %473, i32 0, i32 3
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %460, i32 %466, i32 %472, i32 %478)
  br label %665

480:                                              ; preds = %3, %3, %3, %3
  %481 = load i32*, i32** @HIDPP_FF_CONDITION_CMDS, align 8
  %482 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %483 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = sub nsw i32 %484, 130
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %481, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 %488, i32* %489, align 4
  %490 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %491 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %490, i32 0, i32 3
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_22__*, %struct.TYPE_22__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %493, i64 0
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = ashr i32 %496, 9
  %498 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 6
  store i32 %497, i32* %498, align 8
  %499 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %500 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %499, i32 0, i32 3
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_22__*, %struct.TYPE_22__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %502, i64 0
  %504 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = ashr i32 %505, 1
  %507 = and i32 %506, 255
  %508 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 7
  store i32 %507, i32* %508, align 4
  %509 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %510 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %509, i32 0, i32 3
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %510, i32 0, i32 0
  %512 = load %struct.TYPE_22__*, %struct.TYPE_22__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i64 0
  %514 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = ashr i32 %515, 8
  %517 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 8
  store i32 %516, i32* %517, align 16
  %518 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %519 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %518, i32 0, i32 3
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 0
  %521 = load %struct.TYPE_22__*, %struct.TYPE_22__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %521, i64 0
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = and i32 %524, 255
  %526 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 9
  store i32 %525, i32* %526, align 4
  %527 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %528 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_22__*, %struct.TYPE_22__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %530, i64 0
  %532 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = ashr i32 %533, 9
  %535 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 10
  store i32 %534, i32* %535, align 8
  %536 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %537 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %536, i32 0, i32 3
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 0
  %539 = load %struct.TYPE_22__*, %struct.TYPE_22__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %539, i64 0
  %541 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 4
  %543 = ashr i32 %542, 1
  %544 = and i32 %543, 255
  %545 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 11
  store i32 %544, i32* %545, align 4
  %546 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %547 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 0
  %549 = load %struct.TYPE_22__*, %struct.TYPE_22__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %549, i64 0
  %551 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %550, i32 0, i32 3
  %552 = load i32, i32* %551, align 4
  %553 = ashr i32 %552, 8
  %554 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 12
  store i32 %553, i32* %554, align 16
  %555 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %556 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %555, i32 0, i32 3
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 0
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i64 0
  %560 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %559, i32 0, i32 3
  %561 = load i32, i32* %560, align 4
  %562 = and i32 %561, 255
  %563 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 13
  store i32 %562, i32* %563, align 4
  %564 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %565 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %564, i32 0, i32 3
  %566 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %565, i32 0, i32 0
  %567 = load %struct.TYPE_22__*, %struct.TYPE_22__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %567, i64 0
  %569 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %568, i32 0, i32 4
  %570 = load i32, i32* %569, align 4
  %571 = ashr i32 %570, 8
  %572 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 14
  store i32 %571, i32* %572, align 8
  %573 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %574 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %573, i32 0, i32 3
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i32 0, i32 0
  %576 = load %struct.TYPE_22__*, %struct.TYPE_22__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %576, i64 0
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 4
  %579 = load i32, i32* %578, align 4
  %580 = and i32 %579, 255
  %581 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 15
  store i32 %580, i32* %581, align 4
  %582 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %583 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %582, i32 0, i32 3
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 0
  %585 = load %struct.TYPE_22__*, %struct.TYPE_22__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %585, i64 0
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = ashr i32 %588, 9
  %590 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 16
  store i32 %589, i32* %590, align 16
  %591 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %592 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %591, i32 0, i32 3
  %593 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %592, i32 0, i32 0
  %594 = load %struct.TYPE_22__*, %struct.TYPE_22__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i64 0
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 5
  %597 = load i32, i32* %596, align 4
  %598 = ashr i32 %597, 1
  %599 = and i32 %598, 255
  %600 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 17
  store i32 %599, i32* %600, align 4
  store i32 18, i32* %10, align 4
  %601 = load i32*, i32** @HIDPP_FF_CONDITION_NAMES, align 8
  %602 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %603 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 8
  %605 = sub nsw i32 %604, 130
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %601, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %610 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %609, i32 0, i32 3
  %611 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %610, i32 0, i32 0
  %612 = load %struct.TYPE_22__*, %struct.TYPE_22__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %612, i64 0
  %614 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %617 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %616, i32 0, i32 3
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %617, i32 0, i32 0
  %619 = load %struct.TYPE_22__*, %struct.TYPE_22__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %619, i64 0
  %621 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 4
  %623 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %624 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %623, i32 0, i32 3
  %625 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %624, i32 0, i32 0
  %626 = load %struct.TYPE_22__*, %struct.TYPE_22__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %626, i64 0
  %628 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %627, i32 0, i32 4
  %629 = load i32, i32* %628, align 4
  %630 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %631 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %630, i32 0, i32 3
  %632 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %631, i32 0, i32 0
  %633 = load %struct.TYPE_22__*, %struct.TYPE_22__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %633, i64 0
  %635 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %634, i32 0, i32 5
  %636 = load i32, i32* %635, align 4
  %637 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 %608, i32 %615, i32 %622, i32 %629, i32 %636)
  %638 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %639 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %638, i32 0, i32 3
  %640 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %639, i32 0, i32 0
  %641 = load %struct.TYPE_22__*, %struct.TYPE_22__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %641, i64 0
  %643 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %642, i32 0, i32 2
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %646 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %645, i32 0, i32 3
  %647 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %646, i32 0, i32 0
  %648 = load %struct.TYPE_22__*, %struct.TYPE_22__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %648, i64 0
  %650 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %649, i32 0, i32 3
  %651 = load i32, i32* %650, align 4
  %652 = call i32 (i8*, i32, i32, ...) @dbg_hid(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %644, i32 %651)
  br label %665

653:                                              ; preds = %3
  %654 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %8, align 8
  %655 = getelementptr inbounds %struct.hidpp_ff_private_data, %struct.hidpp_ff_private_data* %654, i32 0, i32 0
  %656 = load %struct.TYPE_13__*, %struct.TYPE_13__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %660 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %659, i32 0, i32 0
  %661 = load i32, i32* %660, align 8
  %662 = call i32 @hid_err(i32 %658, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %661)
  %663 = load i32, i32* @EINVAL, align 4
  %664 = sub nsw i32 0, %663
  store i32 %664, i32* %4, align 4
  br label %674

665:                                              ; preds = %480, %351, %184, %44
  %666 = load %struct.hidpp_ff_private_data*, %struct.hidpp_ff_private_data** %8, align 8
  %667 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %668 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 8
  %670 = load i32, i32* @HIDPP_FF_DOWNLOAD_EFFECT, align 4
  %671 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %672 = load i32, i32* %10, align 4
  %673 = call i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data* %666, i32 %669, i32 %670, i32* %671, i32 %672)
  store i32 %673, i32* %4, align 4
  br label %674

674:                                              ; preds = %665, %653, %170
  %675 = load i32, i32* %4, align 4
  ret i32 %675
}

declare dso_local i32 @fixp_sin16(i32) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32, ...) #1

declare dso_local i32 @hid_err(i32, i8*, i32) #1

declare dso_local i32 @hidpp_ff_queue_work(%struct.hidpp_ff_private_data*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
