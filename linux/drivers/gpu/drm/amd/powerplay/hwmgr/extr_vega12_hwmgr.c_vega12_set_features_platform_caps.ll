; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_features_platform_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_features_platform_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.amdgpu_device*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.amdgpu_device = type { i32 }
%struct.vega12_hwmgr = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@VEGA12_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@PHM_PlatformCaps_ControlVDDCI = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TablelessHardwareInterface = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableSMU7ThermalManagement = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDPowerGating = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDDynamicPowerGating = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEPowerGating = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UnTabledHardwareInterface = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ODNinACSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD6inACSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD6PlusinACSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ActivityReporting = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ODNinDCSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD6inDCSupport = common dso_local global i32 0, align 4
@PHM_PlatformCaps_OD6PlusinDCSupport = common dso_local global i32 0, align 4
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
@PPVEGA12_VEGA12LOWESTUCLKRESERVEDFORULV_DFLT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_LowestUclkReservedForUlv = common dso_local global i32 0, align 4
@PHM_PlatformCaps_CustomFanControlSupport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_set_features_platform_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_set_features_platform_caps(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega12_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %8, %struct.vega12_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  %12 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VEGA12_VOLTAGE_CONTROL_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PHM_PlatformCaps_ControlVDDCI, align 4
  %23 = call i32 @phm_cap_unset(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PHM_PlatformCaps_TablelessHardwareInterface, align 4
  %30 = call i32 @phm_cap_set(i32 %28, i32 %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PHM_PlatformCaps_EnableSMU7ThermalManagement, align 4
  %36 = call i32 @phm_cap_set(i32 %34, i32 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %24
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %49 = call i32 @phm_cap_set(i32 %47, i32 %48)
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PHM_PlatformCaps_UVDDynamicPowerGating, align 4
  %55 = call i32 @phm_cap_set(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %24
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %65 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %69 = call i32 @phm_cap_set(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %72 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PHM_PlatformCaps_UnTabledHardwareInterface, align 4
  %76 = call i32 @phm_cap_set(i32 %74, i32 %75)
  %77 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 16
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PHM_PlatformCaps_ODNinACSupport, align 4
  %88 = call i32 @phm_cap_set(i32 %86, i32 %87)
  br label %102

89:                                               ; preds = %70
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %91 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PHM_PlatformCaps_OD6inACSupport, align 4
  %95 = call i32 @phm_cap_set(i32 %93, i32 %94)
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %97 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PHM_PlatformCaps_OD6PlusinACSupport, align 4
  %101 = call i32 @phm_cap_set(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %89, %82
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %104 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PHM_PlatformCaps_ActivityReporting, align 4
  %108 = call i32 @phm_cap_set(i32 %106, i32 %107)
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %114 = call i32 @phm_cap_set(i32 %112, i32 %113)
  %115 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 17
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %102
  %121 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %122 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 16
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %128 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @PHM_PlatformCaps_ODNinDCSupport, align 4
  %132 = call i32 @phm_cap_set(i32 %130, i32 %131)
  br label %146

133:                                              ; preds = %120
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %135 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PHM_PlatformCaps_OD6inDCSupport, align 4
  %139 = call i32 @phm_cap_set(i32 %137, i32 %138)
  %140 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %141 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @PHM_PlatformCaps_OD6PlusinDCSupport, align 4
  %145 = call i32 @phm_cap_set(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %133, %126
  br label %147

147:                                              ; preds = %146, %102
  %148 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %149 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 15
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %155 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 14
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %161 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %168 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @PHM_PlatformCaps_ODFuzzyFanControlSupport, align 4
  %172 = call i32 @phm_cap_set(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %166, %159, %153, %147
  %174 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %175 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @PHM_PlatformCaps_DynamicPowerManagement, align 4
  %179 = call i32 @phm_cap_set(i32 %177, i32 %178)
  %180 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %181 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @PHM_PlatformCaps_SMC, align 4
  %185 = call i32 @phm_cap_set(i32 %183, i32 %184)
  %186 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %187 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @PHM_PlatformCaps_ThermalPolicyDelay, align 4
  %191 = call i32 @phm_cap_set(i32 %189, i32 %190)
  %192 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %193 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 13
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %173
  %198 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %199 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PHM_PlatformCaps_ExclusiveModeAlwaysHigh, align 4
  %203 = call i32 @phm_cap_set(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %197, %173
  %205 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %206 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @PHM_PlatformCaps_DynamicUVDState, align 4
  %210 = call i32 @phm_cap_set(i32 %208, i32 %209)
  %211 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %212 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 12
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %218 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @PHM_PlatformCaps_SclkThrottleLowNotification, align 4
  %222 = call i32 @phm_cap_set(i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %216, %204
  %224 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %225 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @PHM_PlatformCaps_PowerContainment, align 4
  %229 = call i32 @phm_cap_unset(i32 %227, i32 %228)
  %230 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %231 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %235 = call i32 @phm_cap_unset(i32 %233, i32 %234)
  %236 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %237 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %241 = call i32 @phm_cap_unset(i32 %239, i32 %240)
  %242 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %243 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %247 = call i32 @phm_cap_unset(i32 %245, i32 %246)
  %248 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %249 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %253 = call i32 @phm_cap_unset(i32 %251, i32 %252)
  %254 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %255 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %259 = call i32 @phm_cap_unset(i32 %257, i32 %258)
  %260 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %261 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %265 = call i32 @phm_cap_unset(i32 %263, i32 %264)
  %266 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %267 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %271 = call i32 @phm_cap_unset(i32 %269, i32 %270)
  %272 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %273 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %277 = call i32 @phm_cap_unset(i32 %275, i32 %276)
  %278 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %279 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %283 = call i32 @phm_cap_unset(i32 %281, i32 %282)
  %284 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %285 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 11
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %400

289:                                              ; preds = %223
  %290 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %291 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @PHM_PlatformCaps_DiDtSupport, align 4
  %295 = call i32 @phm_cap_set(i32 %293, i32 %294)
  %296 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %297 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 10
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %289
  %302 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %303 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %307 = call i32 @phm_cap_set(i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %301, %289
  %309 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %310 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 9
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %308
  %315 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %316 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %320 = call i32 @phm_cap_set(i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %314, %308
  %322 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %323 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 8
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %321
  %328 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %329 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %333 = call i32 @phm_cap_set(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %327, %321
  %335 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %336 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 7
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %334
  %341 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %342 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %346 = call i32 @phm_cap_set(i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %340, %334
  %348 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %349 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 6
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %347
  %354 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %355 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %359 = call i32 @phm_cap_set(i32 %357, i32 %358)
  br label %360

360:                                              ; preds = %353, %347
  %361 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %362 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 5
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %368 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %372 = call i32 @phm_cap_set(i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %366, %360
  %374 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %375 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 4
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %373
  %380 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %381 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %385 = call i32 @phm_cap_set(i32 %383, i32 %384)
  br label %386

386:                                              ; preds = %379, %373
  %387 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %388 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %399

392:                                              ; preds = %386
  %393 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %394 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %398 = call i32 @phm_cap_set(i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %392, %386
  br label %400

400:                                              ; preds = %399, %223
  %401 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %402 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @PHM_PlatformCaps_RegulatorHot, align 4
  %406 = call i32 @phm_cap_set(i32 %404, i32 %405)
  %407 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %408 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %425

412:                                              ; preds = %400
  %413 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %414 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %418 = call i32 @phm_cap_set(i32 %416, i32 %417)
  %419 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %420 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @PHM_PlatformCaps_SMCtoPPLIBAcdcGpioScheme, align 4
  %424 = call i32 @phm_cap_set(i32 %422, i32 %423)
  br label %425

425:                                              ; preds = %412, %400
  %426 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %427 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %450

431:                                              ; preds = %425
  %432 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %433 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %437 = call i32 @phm_cap_unset(i32 %435, i32 %436)
  %438 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %439 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @PHM_PlatformCaps_SMCtoPPLIBAcdcGpioScheme, align 4
  %443 = call i32 @phm_cap_unset(i32 %441, i32 %442)
  %444 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %445 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* @PHM_PlatformCaps_Falcon_QuickTransition, align 4
  %449 = call i32 @phm_cap_set(i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %431, %425
  %451 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %452 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @PPVEGA12_VEGA12LOWESTUCLKRESERVEDFORULV_DFLT, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %475

456:                                              ; preds = %450
  %457 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %458 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @PHM_PlatformCaps_LowestUclkReservedForUlv, align 4
  %462 = call i32 @phm_cap_unset(i32 %460, i32 %461)
  %463 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %464 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %474

467:                                              ; preds = %456
  %468 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %469 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* @PHM_PlatformCaps_LowestUclkReservedForUlv, align 4
  %473 = call i32 @phm_cap_set(i32 %471, i32 %472)
  br label %474

474:                                              ; preds = %467, %456
  br label %475

475:                                              ; preds = %474, %450
  %476 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %477 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %476, i32 0, i32 2
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %488

481:                                              ; preds = %475
  %482 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %483 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @PHM_PlatformCaps_CustomFanControlSupport, align 4
  %487 = call i32 @phm_cap_set(i32 %485, i32 %486)
  br label %488

488:                                              ; preds = %481, %475
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
