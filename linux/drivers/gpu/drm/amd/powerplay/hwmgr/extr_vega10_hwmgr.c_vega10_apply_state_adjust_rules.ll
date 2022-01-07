; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_17__*, %struct.TYPE_19__, i64, %struct.vega10_hwmgr*, %struct.amdgpu_device* }
%struct.TYPE_17__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits }
%struct.phm_clock_and_voltage_limits = type { i64, i64 }
%struct.vega10_hwmgr = type { i32, %struct.TYPE_13__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.amdgpu_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.pp_power_state = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.vega10_power_state = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.PP_Clocks = type { i64, i64, i32 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@PP_StateUILabel_Battery = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"VI should always have 2 performance levels\00", align 1
@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"percent sclk value must range from 1% to 100%, setting default value\00", align 1
@PHM_PlatformCaps_DisableMclkSwitchingForFrameLock = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DisableMclkSwitchForVR = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ForceMclkHigh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_power_state*, %struct.pp_power_state*)* @vega10_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_apply_state_adjust_rules(%struct.pp_hwmgr* %0, %struct.pp_power_state* %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_power_state*, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.vega10_power_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.PP_Clocks, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.phm_clock_and_voltage_limits*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.vega10_hwmgr*, align 8
  %19 = alloca %struct.phm_ppt_v2_information*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_power_state* %1, %struct.pp_power_state** %5, align 8
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %26, align 8
  store %struct.amdgpu_device* %27, %struct.amdgpu_device** %7, align 8
  %28 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %29 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %28, i32 0, i32 1
  %30 = call %struct.vega10_power_state* @cast_phw_vega10_power_state(i32* %29)
  store %struct.vega10_power_state* %30, %struct.vega10_power_state** %8, align 8
  %31 = bitcast %struct.PP_Clocks* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 3
  %34 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %33, align 8
  store %struct.vega10_hwmgr* %34, %struct.vega10_hwmgr** %18, align 8
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %36 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %38, %struct.phm_ppt_v2_information** %19, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %39 = load i64, i64* @PP_StateUILabel_Battery, align 8
  %40 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %41 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  %45 = zext i1 %44 to i32
  %46 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %47 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %49 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %3
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  br label %68

64:                                               ; preds = %54
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi %struct.phm_clock_and_voltage_limits* [ %63, %60 ], [ %67, %64 ]
  store %struct.phm_clock_and_voltage_limits* %69, %struct.phm_clock_and_voltage_limits** %16, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %132, label %75

75:                                               ; preds = %68
  store i64 0, i64* %17, align 8
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i64, i64* %17, align 8
  %78 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %79 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %77, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %76
  %84 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %85 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %92 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %97 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %100 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i64 %98, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %83
  %106 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %107 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %114 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ugt i64 %112, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %105
  %118 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %119 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %122 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  store i64 %120, i64* %126, align 8
  br label %127

127:                                              ; preds = %117, %105
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %17, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %17, align 8
  br label %76

131:                                              ; preds = %76
  br label %132

132:                                              ; preds = %131, %68
  %133 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %134 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %133, i32 0, i32 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %140 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %139, i32 0, i32 0
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 1
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %146 = call i32 @PP_CAP(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %232

148:                                              ; preds = %132
  %149 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %150 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %21, align 8
  %153 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %154 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp uge i64 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %148
  %159 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %160 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ule i64 %162, 100
  br label %164

164:                                              ; preds = %158, %148
  %165 = phi i1 [ false, %148 ], [ %163, %158 ]
  %166 = zext i1 %165 to i32
  store i64 75, i64* %21, align 8
  %167 = call i32 @PP_ASSERT_WITH_CODE(i32 %166, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 75)
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %169 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  store %struct.phm_clock_and_voltage_limits* %170, %struct.phm_clock_and_voltage_limits** %16, align 8
  %171 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %172 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %21, align 8
  %175 = mul i64 %173, %174
  %176 = udiv i64 %175, 100
  store i64 %176, i64* %22, align 8
  %177 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %19, align 8
  %178 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %177, i32 0, i32 0
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %181, 1
  store i64 %182, i64* %20, align 8
  br label %183

183:                                              ; preds = %209, %164
  %184 = load i64, i64* %20, align 8
  %185 = icmp uge i64 %184, 0
  br i1 %185, label %186, label %212

186:                                              ; preds = %183
  %187 = load i64, i64* %22, align 8
  %188 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %19, align 8
  %189 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %188, i32 0, i32 0
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp uge i64 %187, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %186
  %199 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %19, align 8
  %200 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %199, i32 0, i32 0
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = load i64, i64* %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %22, align 8
  br label %212

208:                                              ; preds = %186
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %20, align 8
  %211 = add i64 %210, -1
  store i64 %211, i64* %20, align 8
  br label %183

212:                                              ; preds = %198, %183
  %213 = load i64, i64* %20, align 8
  %214 = icmp ult i64 %213, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %19, align 8
  %217 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %216, i32 0, i32 0
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %22, align 8
  br label %224

224:                                              ; preds = %215, %212
  %225 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %226 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %23, align 8
  %228 = load i64, i64* %22, align 8
  %229 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 0
  store i64 %228, i64* %229, align 8
  %230 = load i64, i64* %23, align 8
  %231 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 1
  store i64 %230, i64* %231, align 8
  br label %232

232:                                              ; preds = %224, %132
  %233 = load i32, i32* @PHM_PlatformCaps_DisableMclkSwitchingForFrameLock, align 4
  %234 = call i32 @PP_CAP(i32 %233)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* @PHM_PlatformCaps_DisableMclkSwitchForVR, align 4
  %236 = call i32 @PP_CAP(i32 %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* @PHM_PlatformCaps_ForceMclkHigh, align 4
  %238 = call i32 @PP_CAP(i32 %237)
  store i32 %238, i32* %15, align 4
  %239 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %240 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %239, i32 0, i32 0
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %232
  store i32 0, i32* %12, align 4
  br label %272

246:                                              ; preds = %232
  %247 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %248 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %247, i32 0, i32 0
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 1, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %255 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %254, i32 0, i32 0
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %253, %246
  %261 = load i32, i32* %13, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %15, align 4
  %268 = icmp ne i32 %267, 0
  br label %269

269:                                              ; preds = %266, %263, %260, %253
  %270 = phi i1 [ true, %263 ], [ true, %260 ], [ true, %253 ], [ %268, %266 ]
  %271 = zext i1 %270 to i32
  store i32 %271, i32* %12, align 4
  br label %272

272:                                              ; preds = %269, %245
  %273 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %274 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %273, i32 0, i32 1
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i64 0
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %9, align 8
  %279 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %280 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %279, i32 0, i32 1
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %10, align 8
  %285 = load i64, i64* %9, align 8
  %286 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ult i64 %285, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %272
  %290 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %293 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ugt i64 %291, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %298 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  br label %303

300:                                              ; preds = %289
  %301 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  br label %303

303:                                              ; preds = %300, %296
  %304 = phi i64 [ %299, %296 ], [ %302, %300 ]
  store i64 %304, i64* %9, align 8
  br label %305

305:                                              ; preds = %303, %272
  %306 = load i64, i64* %10, align 8
  %307 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp ult i64 %306, %308
  br i1 %309, label %310, label %326

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %314 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ugt i64 %312, %315
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load %struct.phm_clock_and_voltage_limits*, %struct.phm_clock_and_voltage_limits** %16, align 8
  %319 = getelementptr inbounds %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  br label %324

321:                                              ; preds = %310
  %322 = getelementptr inbounds %struct.PP_Clocks, %struct.PP_Clocks* %11, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  br label %324

324:                                              ; preds = %321, %317
  %325 = phi i64 [ %320, %317 ], [ %323, %321 ]
  store i64 %325, i64* %10, align 8
  br label %326

326:                                              ; preds = %324, %305
  %327 = load i64, i64* %9, align 8
  %328 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %329 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %328, i32 0, i32 1
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 1
  store i64 %327, i64* %332, align 8
  %333 = load i64, i64* %10, align 8
  %334 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %335 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %334, i32 0, i32 1
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 0
  store i64 %333, i64* %338, align 8
  %339 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %340 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %339, i32 0, i32 1
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %346 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %345, i32 0, i32 1
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = icmp ult i64 %344, %350
  br i1 %351, label %352, label %364

352:                                              ; preds = %326
  %353 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %354 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %353, i32 0, i32 1
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %360 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %359, i32 0, i32 1
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 1
  store i64 %358, i64* %363, align 8
  br label %364

364:                                              ; preds = %352, %326
  %365 = load i32, i32* %12, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %459

367:                                              ; preds = %364
  %368 = load i64, i64* %10, align 8
  %369 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %370 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %369, i32 0, i32 1
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i64 1
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ult i64 %368, %374
  br i1 %375, label %376, label %383

376:                                              ; preds = %367
  %377 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %378 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %377, i32 0, i32 1
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i64 1
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %10, align 8
  br label %383

383:                                              ; preds = %376, %367
  %384 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %385 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %384, i32 0, i32 0
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %24, align 8
  store i64 0, i64* %17, align 8
  br label %389

389:                                              ; preds = %449, %383
  %390 = load i64, i64* %17, align 8
  %391 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %392 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp ult i64 %390, %394
  br i1 %395, label %396, label %452

396:                                              ; preds = %389
  %397 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %398 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %399, align 8
  %401 = load i64, i64* %17, align 8
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* %24, align 8
  %406 = icmp ule i64 %404, %405
  br i1 %406, label %407, label %448

407:                                              ; preds = %396
  %408 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %409 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %410, align 8
  %412 = load i64, i64* %17, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %417 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %416, i32 0, i32 1
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i64 0
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp sge i64 %415, %421
  br i1 %422, label %423, label %448

423:                                              ; preds = %407
  %424 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %425 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %426, align 8
  %428 = load i64, i64* %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 1
  %431 = load i64, i64* %430, align 8
  %432 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %433 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %432, i32 0, i32 1
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i64 1
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = icmp sle i64 %431, %437
  br i1 %438, label %439, label %448

439:                                              ; preds = %423
  %440 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  %441 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 1
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %442, align 8
  %444 = load i64, i64* %17, align 8
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %10, align 8
  br label %448

448:                                              ; preds = %439, %423, %407, %396
  br label %449

449:                                              ; preds = %448
  %450 = load i64, i64* %17, align 8
  %451 = add i64 %450, 1
  store i64 %451, i64* %17, align 8
  br label %389

452:                                              ; preds = %389
  %453 = load i64, i64* %10, align 8
  %454 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %455 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %454, i32 0, i32 1
  %456 = load %struct.TYPE_16__*, %struct.TYPE_16__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %456, i64 0
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 0
  store i64 %453, i64* %458, align 8
  br label %486

459:                                              ; preds = %364
  %460 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %461 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %460, i32 0, i32 1
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i64 1
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %467 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %466, i32 0, i32 1
  %468 = load %struct.TYPE_16__*, %struct.TYPE_16__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i64 0
  %470 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = icmp slt i64 %465, %471
  br i1 %472, label %473, label %485

473:                                              ; preds = %459
  %474 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %475 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %474, i32 0, i32 1
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i64 1
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %481 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %480, i32 0, i32 1
  %482 = load %struct.TYPE_16__*, %struct.TYPE_16__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i64 0
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  store i64 %479, i64* %484, align 8
  br label %485

485:                                              ; preds = %473, %459
  br label %486

486:                                              ; preds = %485, %452
  %487 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %488 = call i32 @PP_CAP(i32 %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %517

490:                                              ; preds = %486
  store i64 0, i64* %17, align 8
  br label %491

491:                                              ; preds = %513, %490
  %492 = load i64, i64* %17, align 8
  %493 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %494 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = sext i32 %495 to i64
  %497 = icmp ult i64 %492, %496
  br i1 %497, label %498, label %516

498:                                              ; preds = %491
  %499 = load i64, i64* %22, align 8
  %500 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %501 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %500, i32 0, i32 1
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %501, align 8
  %503 = load i64, i64* %17, align 8
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %504, i32 0, i32 1
  store i64 %499, i64* %505, align 8
  %506 = load i64, i64* %23, align 8
  %507 = load %struct.vega10_power_state*, %struct.vega10_power_state** %8, align 8
  %508 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %507, i32 0, i32 1
  %509 = load %struct.TYPE_16__*, %struct.TYPE_16__** %508, align 8
  %510 = load i64, i64* %17, align 8
  %511 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 0
  store i64 %506, i64* %512, align 8
  br label %513

513:                                              ; preds = %498
  %514 = load i64, i64* %17, align 8
  %515 = add i64 %514, 1
  store i64 %515, i64* %17, align 8
  br label %491

516:                                              ; preds = %491
  br label %517

517:                                              ; preds = %516, %486
  ret i32 0
}

declare dso_local %struct.vega10_power_state* @cast_phw_vega10_power_state(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @PP_CAP(i32) #1

declare dso_local i32 @PP_ASSERT_WITH_CODE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
