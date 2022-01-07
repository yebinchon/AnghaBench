; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_features_platform_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_set_features_platform_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__, %struct.amdgpu_device*, i64, %struct.vega10_hwmgr* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.vega10_hwmgr = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phm_ppt_v2_information = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPatchPowerState = common dso_local global i32 0, align 4
@VEGA10_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_ControlVDDCI = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableSMU7ThermalManagement = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDPowerGating = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEPowerGating = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UnTabledHardwareInterface = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ODFuzzyFanControlSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPowerManagement = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SMC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PowerContainment = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DiDtSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SQRamping = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DBRamping = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TDRamping = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TCPRamping = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DBRRamping = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DiDtEDCEnable = common dso_local global i32 0, align 4
@PHM_PlatformCaps_GCEDC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PSM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_CAC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ClockStretcher = common dso_local global i32 0, align 4
@PHM_PlatformCaps_RegulatorHot = common dso_local global i32 0, align 4
@PHM_PlatformCaps_AutomaticDCTransition = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEDPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_set_features_platform_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_set_features_platform_caps(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v2_information*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 3
  %8 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  store %struct.vega10_hwmgr* %8, %struct.vega10_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.phm_ppt_v2_information*
  store %struct.phm_ppt_v2_information* %12, %struct.phm_ppt_v2_information** %4, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %5, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %21 = call i32 @phm_cap_set(i32 %19, i32 %20)
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PHM_PlatformCaps_DynamicPatchPowerState, align 4
  %27 = call i32 @phm_cap_set(i32 %25, i32 %26)
  %28 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VEGA10_VOLTAGE_CONTROL_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PHM_PlatformCaps_ControlVDDCI, align 4
  %39 = call i32 @phm_cap_unset(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %42 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PHM_PlatformCaps_EnableSMU7ThermalManagement, align 4
  %46 = call i32 @phm_cap_set(i32 %44, i32 %45)
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %59 = call i32 @phm_cap_set(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %40
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %69 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %73 = call i32 @phm_cap_set(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PHM_PlatformCaps_UnTabledHardwareInterface, align 4
  %80 = call i32 @phm_cap_set(i32 %78, i32 %79)
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %86 = call i32 @phm_cap_set(i32 %84, i32 %85)
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %88 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PHM_PlatformCaps_ODFuzzyFanControlSupport, align 4
  %92 = call i32 @phm_cap_set(i32 %90, i32 %91)
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %94 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PHM_PlatformCaps_DynamicPowerManagement, align 4
  %98 = call i32 @phm_cap_set(i32 %96, i32 %97)
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PHM_PlatformCaps_SMC, align 4
  %104 = call i32 @phm_cap_set(i32 %102, i32 %103)
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %110 = call i32 @phm_cap_unset(i32 %108, i32 %109)
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %116 = call i32 @phm_cap_unset(i32 %114, i32 %115)
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %118 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %122 = call i32 @phm_cap_unset(i32 %120, i32 %121)
  %123 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %124 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %128 = call i32 @phm_cap_unset(i32 %126, i32 %127)
  %129 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %130 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %134 = call i32 @phm_cap_unset(i32 %132, i32 %133)
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %136 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %140 = call i32 @phm_cap_unset(i32 %138, i32 %139)
  %141 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %142 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %146 = call i32 @phm_cap_unset(i32 %144, i32 %145)
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %148 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %152 = call i32 @phm_cap_unset(i32 %150, i32 %151)
  %153 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %154 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %158 = call i32 @phm_cap_unset(i32 %156, i32 %157)
  %159 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %160 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %164 = call i32 @phm_cap_unset(i32 %162, i32 %163)
  %165 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 10
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %281

170:                                              ; preds = %74
  %171 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %172 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %176 = call i32 @phm_cap_set(i32 %174, i32 %175)
  %177 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %184 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %188 = call i32 @phm_cap_set(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %182, %170
  %190 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %191 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 8
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %189
  %196 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %197 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %201 = call i32 @phm_cap_set(i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %195, %189
  %203 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %204 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %202
  %209 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %210 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %214 = call i32 @phm_cap_set(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %208, %202
  %216 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %217 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %223 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %227 = call i32 @phm_cap_set(i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %221, %215
  %229 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %230 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %228
  %235 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %236 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %240 = call i32 @phm_cap_set(i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %234, %228
  %242 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %243 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %249 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %253 = call i32 @phm_cap_set(i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %247, %241
  %255 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %256 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %254
  %261 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %262 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %266 = call i32 @phm_cap_set(i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %260, %254
  %268 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %269 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %267
  %274 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %275 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %279 = call i32 @phm_cap_set(i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %273, %267
  br label %281

281:                                              ; preds = %280, %74
  %282 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %283 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %281
  %288 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %289 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %293 = call i32 @phm_cap_set(i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %287, %281
  %295 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %296 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @PHM_PlatformCaps_CAC, align 4
  %300 = call i32 @phm_cap_set(i32 %298, i32 %299)
  %301 = load %struct.phm_ppt_v2_information*, %struct.phm_ppt_v2_information** %4, align 8
  %302 = getelementptr inbounds %struct.phm_ppt_v2_information, %struct.phm_ppt_v2_information* %301, i32 0, i32 0
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %294
  %308 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %309 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %315 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @PHM_PlatformCaps_ClockStretcher, align 4
  %319 = call i32 @phm_cap_set(i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %313, %307, %294
  %321 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %322 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @PHM_PlatformCaps_RegulatorHot, align 4
  %326 = call i32 @phm_cap_set(i32 %324, i32 %325)
  %327 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %328 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %332 = call i32 @phm_cap_set(i32 %330, i32 %331)
  %333 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %334 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %338 = call i32 @phm_cap_set(i32 %336, i32 %337)
  %339 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %340 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @PHM_PlatformCaps_VCEDPM, align 4
  %344 = call i32 @phm_cap_set(i32 %342, i32 %343)
  ret i32 0
}

declare dso_local i32 @phm_cap_set(i32, i32) #1

declare dso_local i32 @phm_cap_unset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
