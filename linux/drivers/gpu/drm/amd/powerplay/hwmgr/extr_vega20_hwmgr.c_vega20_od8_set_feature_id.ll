; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_od8_set_feature_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_od8_set_feature_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega20_hwmgr = type { %struct.vega20_od8_settings }
%struct.vega20_od8_settings = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OD8_GFXCLK_LIMITS = common dso_local global i32 0, align 4
@OD8_SETTING_GFXCLK_FMIN = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FMAX = common dso_local global i64 0, align 8
@OD8_GFXCLK_CURVE = common dso_local global i32 0, align 4
@OD8_SETTING_GFXCLK_FREQ1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ3 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE3 = common dso_local global i64 0, align 8
@OD8_UCLK_MAX = common dso_local global i32 0, align 4
@OD8_SETTING_UCLK_FMAX = common dso_local global i64 0, align 8
@OD8_POWER_LIMIT = common dso_local global i32 0, align 4
@OD8_SETTING_POWER_PERCENTAGE = common dso_local global i64 0, align 8
@OD8_ACOUSTIC_LIMIT_SCLK = common dso_local global i32 0, align 4
@OD8_SETTING_FAN_ACOUSTIC_LIMIT = common dso_local global i64 0, align 8
@OD8_FAN_SPEED_MIN = common dso_local global i32 0, align 4
@OD8_SETTING_FAN_MIN_SPEED = common dso_local global i64 0, align 8
@OD8_TEMPERATURE_FAN = common dso_local global i32 0, align 4
@OD8_SETTING_FAN_TARGET_TEMP = common dso_local global i64 0, align 8
@OD8_TEMPERATURE_SYSTEM = common dso_local global i32 0, align 4
@OD8_SETTING_OPERATING_TEMP_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_od8_set_feature_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_od8_set_feature_id(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  %4 = alloca %struct.vega20_od8_settings*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %8, %struct.vega20_hwmgr** %3, align 8
  %9 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %9, i32 0, i32 0
  store %struct.vega20_od8_settings* %10, %struct.vega20_od8_settings** %4, align 8
  %11 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %12 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @OD8_GFXCLK_LIMITS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @OD8_GFXCLK_LIMITS, align 4
  %19 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %20 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* @OD8_GFXCLK_LIMITS, align 4
  %26 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %27 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %25, i32* %31, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %34 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %40 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %17
  %46 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %47 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %45
  %53 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %54 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %55 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %61 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %62 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %68 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %69 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %75 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %76 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  %81 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %82 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %83 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %89 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %90 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  br label %132

95:                                               ; preds = %45
  %96 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %97 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %103 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  %108 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %109 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %115 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %121 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 0, i32* %125, align 4
  %126 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %127 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %95, %52
  %133 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %134 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @OD8_UCLK_MAX, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i32, i32* @OD8_UCLK_MAX, align 4
  %141 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %142 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i32 %140, i32* %146, align 4
  br label %154

147:                                              ; preds = %132
  %148 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %149 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %139
  %155 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %156 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @OD8_POWER_LIMIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load i32, i32* @OD8_POWER_LIMIT, align 4
  %163 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %164 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 %162, i32* %168, align 4
  br label %176

169:                                              ; preds = %154
  %170 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %171 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %169, %161
  %177 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %178 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @OD8_ACOUSTIC_LIMIT_SCLK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load i32, i32* @OD8_ACOUSTIC_LIMIT_SCLK, align 4
  %185 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %186 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  store i32 %184, i32* %190, align 4
  br label %198

191:                                              ; preds = %176
  %192 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %193 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i32 0, i32* %197, align 4
  br label %198

198:                                              ; preds = %191, %183
  %199 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %200 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @OD8_FAN_SPEED_MIN, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load i32, i32* @OD8_FAN_SPEED_MIN, align 4
  %207 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %208 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %207, i32 0, i32 1
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i32 %206, i32* %212, align 4
  br label %220

213:                                              ; preds = %198
  %214 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %215 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %214, i32 0, i32 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  store i32 0, i32* %219, align 4
  br label %220

220:                                              ; preds = %213, %205
  %221 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %222 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @OD8_TEMPERATURE_FAN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %220
  %228 = load i32, i32* @OD8_TEMPERATURE_FAN, align 4
  %229 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %230 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %229, i32 0, i32 1
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  store i32 %228, i32* %234, align 4
  br label %242

235:                                              ; preds = %220
  %236 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %237 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %236, i32 0, i32 1
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i32 0, i32* %241, align 4
  br label %242

242:                                              ; preds = %235, %227
  %243 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %244 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @OD8_TEMPERATURE_SYSTEM, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %242
  %250 = load i32, i32* @OD8_TEMPERATURE_SYSTEM, align 4
  %251 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %252 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %251, i32 0, i32 1
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  store i32 %250, i32* %256, align 4
  br label %264

257:                                              ; preds = %242
  %258 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %4, align 8
  %259 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %258, i32 0, i32 1
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %257, %249
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
