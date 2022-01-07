; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_od8_set_feature_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_od8_set_feature_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64, i64 }
%struct.phm_ppt_v3_information = type { i32*, i32*, i64* }
%struct.vega20_hwmgr = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.vega20_od8_settings, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.vega20_od8_settings = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }

@GNLD_DPM_GFXCLK = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODFEATURE_GFXCLK_LIMITS = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FMAX = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FMIN = common dso_local global i64 0, align 8
@OD8_GFXCLK_LIMITS = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_GFXCLK_CURVE = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE1 = common dso_local global i64 0, align 8
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@OD8_SETTING_GFXCLK_VOLTAGE3 = common dso_local global i64 0, align 8
@OD8_GFXCLK_CURVE = common dso_local global i32 0, align 4
@GNLD_DPM_UCLK = common dso_local global i64 0, align 8
@OD8_SETTING_UCLK_FMAX = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODFEATURE_UCLK_MAX = common dso_local global i64 0, align 8
@OD8_UCLK_MAX = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_POWER_LIMIT = common dso_local global i64 0, align 8
@OD8_SETTING_POWER_PERCENTAGE = common dso_local global i64 0, align 8
@OD8_POWER_LIMIT = common dso_local global i32 0, align 4
@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODFEATURE_FAN_ACOUSTIC_LIMIT = common dso_local global i64 0, align 8
@OD8_SETTING_FAN_ACOUSTIC_LIMIT = common dso_local global i64 0, align 8
@OD8_ACOUSTIC_LIMIT_SCLK = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_FAN_SPEED_MIN = common dso_local global i64 0, align 8
@OD8_SETTING_FAN_MIN_SPEED = common dso_local global i64 0, align 8
@OD8_FAN_SPEED_MIN = common dso_local global i32 0, align 4
@GNLD_THERMAL = common dso_local global i64 0, align 8
@ATOM_VEGA20_ODFEATURE_TEMPERATURE_FAN = common dso_local global i64 0, align 8
@OD8_SETTING_FAN_TARGET_TEMP = common dso_local global i64 0, align 8
@OD8_TEMPERATURE_FAN = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_TEMPERATURE_SYSTEM = common dso_local global i64 0, align 8
@OD8_SETTING_OPERATING_TEMP_MAX = common dso_local global i64 0, align 8
@OD8_TEMPERATURE_SYSTEM = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_MEMORY_TIMING_TUNE = common dso_local global i64 0, align 8
@OD8_MEMORY_TIMING_TUNE = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_FAN_ZERO_RPM_CONTROL = common dso_local global i64 0, align 8
@OD8_FAN_ZERO_RPM_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_od8_set_feature_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_od8_set_feature_capabilities(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.phm_ppt_v3_information*, align 8
  %4 = alloca %struct.vega20_hwmgr*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.vega20_od8_settings*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.phm_ppt_v3_information*
  store %struct.phm_ppt_v3_information* %10, %struct.phm_ppt_v3_information** %3, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %14, %struct.vega20_hwmgr** %4, align 8
  %15 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %5, align 8
  %18 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %19 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %18, i32 0, i32 2
  store %struct.vega20_od8_settings* %19, %struct.vega20_od8_settings** %6, align 8
  %20 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %21 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %23 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = load i64, i64* @GNLD_DPM_GFXCLK, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %129

30:                                               ; preds = %1
  %31 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %32 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @ATOM_VEGA20_ODFEATURE_GFXCLK_LIMITS, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %30
  %39 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %40 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %38
  %47 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %48 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %56 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %62 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %60, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i32, i32* @OD8_GFXCLK_LIMITS, align 4
  %70 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %71 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %54, %46, %38, %30
  %75 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %76 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @ATOM_VEGA20_ODFEATURE_GFXCLK_CURVE, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %74
  %83 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %84 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @VOLTAGE_SCALE, align 4
  %93 = sdiv i32 %91, %92
  %94 = icmp sge i32 %88, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %82
  %96 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %97 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @VOLTAGE_SCALE, align 4
  %106 = sdiv i32 %104, %105
  %107 = icmp sle i32 %101, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %95
  %109 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %110 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %116 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %114, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load i32, i32* @OD8_GFXCLK_CURVE, align 4
  %124 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %125 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %108, %95, %82, %74
  br label %129

129:                                              ; preds = %128, %1
  %130 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %131 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i64, i64* @GNLD_DPM_UCLK, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %203

138:                                              ; preds = %129
  %139 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %140 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %145 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %155 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %160 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @ATOM_VEGA20_ODFEATURE_UCLK_MAX, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %138
  %167 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %168 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %202

174:                                              ; preds = %166
  %175 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %176 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %202

182:                                              ; preds = %174
  %183 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %184 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %190 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp sge i32 %188, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %182
  %197 = load i32, i32* @OD8_UCLK_MAX, align 4
  %198 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %199 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %196, %182, %174, %166, %138
  br label %203

203:                                              ; preds = %202, %129
  %204 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %205 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @ATOM_VEGA20_ODFEATURE_POWER_LIMIT, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %203
  %212 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %213 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %211
  %220 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %221 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp sle i32 %225, 100
  br i1 %226, label %227, label %249

227:                                              ; preds = %219
  %228 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %229 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %227
  %236 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %237 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @OD8_SETTING_POWER_PERCENTAGE, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp sle i32 %241, 100
  br i1 %242, label %243, label %249

243:                                              ; preds = %235
  %244 = load i32, i32* @OD8_POWER_LIMIT, align 4
  %245 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %246 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %243, %235, %227, %219, %211, %203
  %250 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %251 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %250, i32 0, i32 0
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %355

258:                                              ; preds = %249
  %259 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %260 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %259, i32 0, i32 2
  %261 = load i64*, i64** %260, align 8
  %262 = load i64, i64* @ATOM_VEGA20_ODFEATURE_FAN_ACOUSTIC_LIMIT, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %302

266:                                              ; preds = %258
  %267 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %268 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %302

274:                                              ; preds = %266
  %275 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %276 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %302

282:                                              ; preds = %274
  %283 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %284 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %290 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @OD8_SETTING_FAN_ACOUSTIC_LIMIT, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = icmp sge i32 %288, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %282
  %297 = load i32, i32* @OD8_ACOUSTIC_LIMIT_SCLK, align 4
  %298 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %299 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %296, %282, %274, %266, %258
  %303 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %304 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %303, i32 0, i32 2
  %305 = load i64*, i64** %304, align 8
  %306 = load i64, i64* @ATOM_VEGA20_ODFEATURE_FAN_SPEED_MIN, align 8
  %307 = getelementptr inbounds i64, i64* %305, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %354

310:                                              ; preds = %302
  %311 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %312 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = mul nsw i32 %319, %322
  %324 = sdiv i32 %323, 100
  %325 = icmp sge i32 %316, %324
  br i1 %325, label %326, label %354

326:                                              ; preds = %310
  %327 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %328 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %354

334:                                              ; preds = %326
  %335 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %336 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %342 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* @OD8_SETTING_FAN_MIN_SPEED, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp sge i32 %340, %346
  br i1 %347, label %348, label %354

348:                                              ; preds = %334
  %349 = load i32, i32* @OD8_FAN_SPEED_MIN, align 4
  %350 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %351 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %348, %334, %326, %310, %302
  br label %355

355:                                              ; preds = %354, %249
  %356 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %4, align 8
  %357 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %356, i32 0, i32 0
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %357, align 8
  %359 = load i64, i64* @GNLD_THERMAL, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %453

364:                                              ; preds = %355
  %365 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %366 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %365, i32 0, i32 2
  %367 = load i64*, i64** %366, align 8
  %368 = load i64, i64* @ATOM_VEGA20_ODFEATURE_TEMPERATURE_FAN, align 8
  %369 = getelementptr inbounds i64, i64* %367, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %408

372:                                              ; preds = %364
  %373 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %374 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %373, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %408

380:                                              ; preds = %372
  %381 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %382 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp sgt i32 %386, 0
  br i1 %387, label %388, label %408

388:                                              ; preds = %380
  %389 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %390 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %389, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %396 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i64, i64* @OD8_SETTING_FAN_TARGET_TEMP, align 8
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = icmp sge i32 %394, %400
  br i1 %401, label %402, label %408

402:                                              ; preds = %388
  %403 = load i32, i32* @OD8_TEMPERATURE_FAN, align 4
  %404 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %405 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 4
  br label %408

408:                                              ; preds = %402, %388, %380, %372, %364
  %409 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %410 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %409, i32 0, i32 2
  %411 = load i64*, i64** %410, align 8
  %412 = load i64, i64* @ATOM_VEGA20_ODFEATURE_TEMPERATURE_SYSTEM, align 8
  %413 = getelementptr inbounds i64, i64* %411, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %452

416:                                              ; preds = %408
  %417 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %418 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %417, i32 0, i32 0
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %452

424:                                              ; preds = %416
  %425 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %426 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %429 = getelementptr inbounds i32, i32* %427, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp sgt i32 %430, 0
  br i1 %431, label %432, label %452

432:                                              ; preds = %424
  %433 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %434 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %440 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = load i64, i64* @OD8_SETTING_OPERATING_TEMP_MAX, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp sge i32 %438, %444
  br i1 %445, label %446, label %452

446:                                              ; preds = %432
  %447 = load i32, i32* @OD8_TEMPERATURE_SYSTEM, align 4
  %448 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %449 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = or i32 %450, %447
  store i32 %451, i32* %449, align 4
  br label %452

452:                                              ; preds = %446, %432, %424, %416, %408
  br label %453

453:                                              ; preds = %452, %355
  %454 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %455 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %454, i32 0, i32 2
  %456 = load i64*, i64** %455, align 8
  %457 = load i64, i64* @ATOM_VEGA20_ODFEATURE_MEMORY_TIMING_TUNE, align 8
  %458 = getelementptr inbounds i64, i64* %456, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %453
  %462 = load i32, i32* @OD8_MEMORY_TIMING_TUNE, align 4
  %463 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %464 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 4
  br label %467

467:                                              ; preds = %461, %453
  %468 = load %struct.phm_ppt_v3_information*, %struct.phm_ppt_v3_information** %3, align 8
  %469 = getelementptr inbounds %struct.phm_ppt_v3_information, %struct.phm_ppt_v3_information* %468, i32 0, i32 2
  %470 = load i64*, i64** %469, align 8
  %471 = load i64, i64* @ATOM_VEGA20_ODFEATURE_FAN_ZERO_RPM_CONTROL, align 8
  %472 = getelementptr inbounds i64, i64* %470, i64 %471
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %486

475:                                              ; preds = %467
  %476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 4
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %475
  %481 = load i32, i32* @OD8_FAN_ZERO_RPM_CONTROL, align 4
  %482 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %483 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = or i32 %484, %481
  store i32 %485, i32* %483, align 4
  br label %486

486:                                              ; preds = %480, %475, %467
  %487 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %488 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %486
  %492 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %493 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %492, i32 0, i32 0
  store i32 0, i32* %493, align 8
  br label %494

494:                                              ; preds = %491, %486
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
