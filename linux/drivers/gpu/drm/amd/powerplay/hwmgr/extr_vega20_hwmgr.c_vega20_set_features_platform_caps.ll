; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_features_platform_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_set_features_platform_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.amdgpu_device*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.amdgpu_device = type { i32 }
%struct.vega20_hwmgr = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@VEGA20_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_ControlVDDCI = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TablelessHardwareInterface = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableSMU7ThermalManagement = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDPowerGating = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEPowerGating = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UnTabledHardwareInterface = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD8inACSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ActivityReporting = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD8inDCSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ODFuzzyFanControlSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPowerManagement = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SMC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ThermalPolicyDelay = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ExclusiveModeAlwaysHigh = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicUVDState = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SclkThrottleLowNotification = common dso_local global i32 0, align 4
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
@PHM_PlatformCaps_RegulatorHot = common dso_local global i32 0, align 4
@PHM_PlatformCaps_AutomaticDCTransition = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SMCtoPPLIBAcdcGpioScheme = common dso_local global i32 0, align 4
@PHM_PlatformCaps_Falcon_QuickTransition = common dso_local global i32 0, align 4
@PPVEGA20_VEGA20LOWESTUCLKRESERVEDFORULV_DFLT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_LowestUclkReservedForUlv = common dso_local global i32 0, align 4
@PHM_PlatformCaps_CustomFanControlSupport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_set_features_platform_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_features_platform_caps(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %8, %struct.vega20_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  %12 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VEGA20_VOLTAGE_CONTROL_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PHM_PlatformCaps_ControlVDDCI, align 4
  %23 = call i32 @phm_cap_unset(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PHM_PlatformCaps_TablelessHardwareInterface, align 4
  %30 = call i32 @phm_cap_set(i32 %28, i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PHM_PlatformCaps_EnableSMU7ThermalManagement, align 4
  %36 = call i32 @phm_cap_set(i32 %34, i32 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %49 = call i32 @phm_cap_set(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %24
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %63 = call i32 @phm_cap_set(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PHM_PlatformCaps_UnTabledHardwareInterface, align 4
  %70 = call i32 @phm_cap_set(i32 %68, i32 %69)
  %71 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 16
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %64
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PHM_PlatformCaps_OD8inACSupport, align 4
  %82 = call i32 @phm_cap_set(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %64
  %84 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %85 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PHM_PlatformCaps_ActivityReporting, align 4
  %89 = call i32 @phm_cap_set(i32 %87, i32 %88)
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %95 = call i32 @phm_cap_set(i32 %93, i32 %94)
  %96 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %97 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 17
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %83
  %102 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %103 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 16
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %109 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @PHM_PlatformCaps_OD8inDCSupport, align 4
  %113 = call i32 @phm_cap_set(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %101
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %117 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 15
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %123 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 14
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %129 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %136 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PHM_PlatformCaps_ODFuzzyFanControlSupport, align 4
  %140 = call i32 @phm_cap_set(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %127, %121, %115
  %142 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %143 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PHM_PlatformCaps_DynamicPowerManagement, align 4
  %147 = call i32 @phm_cap_set(i32 %145, i32 %146)
  %148 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %149 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PHM_PlatformCaps_SMC, align 4
  %153 = call i32 @phm_cap_set(i32 %151, i32 %152)
  %154 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %155 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @PHM_PlatformCaps_ThermalPolicyDelay, align 4
  %159 = call i32 @phm_cap_set(i32 %157, i32 %158)
  %160 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %161 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 13
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %141
  %166 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %167 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @PHM_PlatformCaps_ExclusiveModeAlwaysHigh, align 4
  %171 = call i32 @phm_cap_set(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %141
  %173 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %174 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @PHM_PlatformCaps_DynamicUVDState, align 4
  %178 = call i32 @phm_cap_set(i32 %176, i32 %177)
  %179 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %180 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 12
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %172
  %185 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %186 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @PHM_PlatformCaps_SclkThrottleLowNotification, align 4
  %190 = call i32 @phm_cap_set(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %184, %172
  %192 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %193 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %197 = call i32 @phm_cap_unset(i32 %195, i32 %196)
  %198 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %199 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %203 = call i32 @phm_cap_unset(i32 %201, i32 %202)
  %204 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %205 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %209 = call i32 @phm_cap_unset(i32 %207, i32 %208)
  %210 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %211 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %215 = call i32 @phm_cap_unset(i32 %213, i32 %214)
  %216 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %217 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %221 = call i32 @phm_cap_unset(i32 %219, i32 %220)
  %222 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %223 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %227 = call i32 @phm_cap_unset(i32 %225, i32 %226)
  %228 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %229 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %233 = call i32 @phm_cap_unset(i32 %231, i32 %232)
  %234 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %235 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %239 = call i32 @phm_cap_unset(i32 %237, i32 %238)
  %240 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %241 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %245 = call i32 @phm_cap_unset(i32 %243, i32 %244)
  %246 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %247 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %251 = call i32 @phm_cap_unset(i32 %249, i32 %250)
  %252 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %253 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 11
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %368

257:                                              ; preds = %191
  %258 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %259 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %263 = call i32 @phm_cap_set(i32 %261, i32 %262)
  %264 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %265 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 10
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %257
  %270 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %271 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %275 = call i32 @phm_cap_set(i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %269, %257
  %277 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %278 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 9
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %284 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %288 = call i32 @phm_cap_set(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %282, %276
  %290 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %291 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 8
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %289
  %296 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %297 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %301 = call i32 @phm_cap_set(i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %295, %289
  %303 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %304 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 7
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %310 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %314 = call i32 @phm_cap_set(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %308, %302
  %316 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %317 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 6
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %323 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %327 = call i32 @phm_cap_set(i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %321, %315
  %329 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %330 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %336 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %340 = call i32 @phm_cap_set(i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %334, %328
  %342 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %343 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %349 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %353 = call i32 @phm_cap_set(i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %347, %341
  %355 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %356 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %354
  %361 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %362 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %366 = call i32 @phm_cap_set(i32 %364, i32 %365)
  br label %367

367:                                              ; preds = %360, %354
  br label %368

368:                                              ; preds = %367, %191
  %369 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %370 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @PHM_PlatformCaps_RegulatorHot, align 4
  %374 = call i32 @phm_cap_set(i32 %372, i32 %373)
  %375 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %376 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %368
  %381 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %382 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %386 = call i32 @phm_cap_set(i32 %384, i32 %385)
  %387 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %388 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @PHM_PlatformCaps_SMCtoPPLIBAcdcGpioScheme, align 4
  %392 = call i32 @phm_cap_set(i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %380, %368
  %394 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %395 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %418

399:                                              ; preds = %393
  %400 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %401 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %405 = call i32 @phm_cap_unset(i32 %403, i32 %404)
  %406 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %407 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @PHM_PlatformCaps_SMCtoPPLIBAcdcGpioScheme, align 4
  %411 = call i32 @phm_cap_unset(i32 %409, i32 %410)
  %412 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %413 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @PHM_PlatformCaps_Falcon_QuickTransition, align 4
  %417 = call i32 @phm_cap_set(i32 %415, i32 %416)
  br label %418

418:                                              ; preds = %399, %393
  %419 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %420 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* @PPVEGA20_VEGA20LOWESTUCLKRESERVEDFORULV_DFLT, align 4
  %423 = icmp ne i32 %421, %422
  br i1 %423, label %424, label %443

424:                                              ; preds = %418
  %425 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %426 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @PHM_PlatformCaps_LowestUclkReservedForUlv, align 4
  %430 = call i32 @phm_cap_unset(i32 %428, i32 %429)
  %431 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %432 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %435, label %442

435:                                              ; preds = %424
  %436 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %437 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @PHM_PlatformCaps_LowestUclkReservedForUlv, align 4
  %441 = call i32 @phm_cap_set(i32 %439, i32 %440)
  br label %442

442:                                              ; preds = %435, %424
  br label %443

443:                                              ; preds = %442, %418
  %444 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %445 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %443
  %450 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %451 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @PHM_PlatformCaps_CustomFanControlSupport, align 4
  %455 = call i32 @phm_cap_set(i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %449, %443
  ret i32 0
}

declare dso_local i32 @phm_cap_unset(i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
