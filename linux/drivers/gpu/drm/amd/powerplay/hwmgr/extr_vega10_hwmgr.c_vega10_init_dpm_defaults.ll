; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_init_dpm_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_init_dpm_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, %struct.amdgpu_device*, %struct.vega10_hwmgr* }
%struct.amdgpu_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.vega10_hwmgr = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@GNLD_FEATURES_MAX = common dso_local global i32 0, align 4
@FEATURE_DPM_PREFETCHER_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_PREFETCHER = common dso_local global i64 0, align 8
@FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_GFXCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_UCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_SOCCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_UVD_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_UVD = common dso_local global i64 0, align 8
@FEATURE_DPM_VCE_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_VCE = common dso_local global i64 0, align 8
@FEATURE_DPM_MP0CLK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_MP0CLK = common dso_local global i64 0, align 8
@FEATURE_DPM_LINK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_LINK = common dso_local global i64 0, align 8
@FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DPM_DCEFCLK = common dso_local global i64 0, align 8
@FEATURE_ULV_BIT = common dso_local global i32 0, align 4
@GNLD_ULV = common dso_local global i64 0, align 8
@FEATURE_AVFS_BIT = common dso_local global i32 0, align 4
@GNLD_AVFS = common dso_local global i64 0, align 8
@FEATURE_DS_GFXCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DS_GFXCLK = common dso_local global i64 0, align 8
@FEATURE_DS_SOCCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DS_SOCCLK = common dso_local global i64 0, align 8
@FEATURE_DS_LCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DS_LCLK = common dso_local global i64 0, align 8
@FEATURE_PPT_BIT = common dso_local global i32 0, align 4
@GNLD_PPT = common dso_local global i64 0, align 8
@FEATURE_TDC_BIT = common dso_local global i32 0, align 4
@GNLD_TDC = common dso_local global i64 0, align 8
@FEATURE_THERMAL_BIT = common dso_local global i32 0, align 4
@GNLD_THERMAL = common dso_local global i64 0, align 8
@FEATURE_GFX_PER_CU_CG_BIT = common dso_local global i32 0, align 4
@GNLD_GFX_PER_CU_CG = common dso_local global i64 0, align 8
@FEATURE_RM_BIT = common dso_local global i32 0, align 4
@GNLD_RM = common dso_local global i64 0, align 8
@FEATURE_DS_DCEFCLK_BIT = common dso_local global i32 0, align 4
@GNLD_DS_DCEFCLK = common dso_local global i64 0, align 8
@FEATURE_ACDC_BIT = common dso_local global i32 0, align 4
@GNLD_ACDC = common dso_local global i64 0, align 8
@FEATURE_VR0HOT_BIT = common dso_local global i32 0, align 4
@GNLD_VR0HOT = common dso_local global i64 0, align 8
@FEATURE_VR1HOT_BIT = common dso_local global i32 0, align 4
@GNLD_VR1HOT = common dso_local global i64 0, align 8
@FEATURE_FW_CTF_BIT = common dso_local global i32 0, align 4
@GNLD_FW_CTF = common dso_local global i64 0, align 8
@FEATURE_LED_DISPLAY_BIT = common dso_local global i32 0, align 4
@GNLD_LED_DISPLAY = common dso_local global i64 0, align 8
@FEATURE_FAN_CONTROL_BIT = common dso_local global i32 0, align 4
@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@FEATURE_ACG_BIT = common dso_local global i32 0, align 4
@GNLD_ACG = common dso_local global i64 0, align 8
@FEATURE_GFX_EDC_BIT = common dso_local global i32 0, align 4
@GNLD_DIDT = common dso_local global i64 0, align 8
@FEATURE_PCC_LIMIT_CONTROL_BIT = common dso_local global i32 0, align 4
@GNLD_PCC_LIMIT = common dso_local global i64 0, align 8
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@PPSMC_MSG_GetSmuVersion = common dso_local global i32 0, align 4
@PPSMC_MSG_ReadSerialNumTop32 = common dso_local global i32 0, align 4
@PPSMC_MSG_ReadSerialNumBottom32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega10_init_dpm_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_init_dpm_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega10_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 3
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 2
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %9, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = call i32 @vega10_initialize_power_tune_defaults(%struct.pp_hwmgr* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %53, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GNLD_FEATURES_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 65535, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %31, i32* %38, align 4
  %39 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %22
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* @FEATURE_DPM_PREFETCHER_BIT, align 4
  %58 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* @GNLD_DPM_PREFETCHER, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  %64 = load i32, i32* @FEATURE_DPM_GFXCLK_BIT, align 4
  %65 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i64, i64* @GNLD_DPM_GFXCLK, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %64, i32* %70, align 4
  %71 = load i32, i32* @FEATURE_DPM_UCLK_BIT, align 4
  %72 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %73 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* @GNLD_DPM_UCLK, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 4
  %78 = load i32, i32* @FEATURE_DPM_SOCCLK_BIT, align 4
  %79 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %80 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* @GNLD_DPM_SOCCLK, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* @FEATURE_DPM_UVD_BIT, align 4
  %86 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %87 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* @GNLD_DPM_UVD, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* @FEATURE_DPM_VCE_BIT, align 4
  %93 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %94 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i64, i64* @GNLD_DPM_VCE, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* @FEATURE_DPM_MP0CLK_BIT, align 4
  %100 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* @GNLD_DPM_MP0CLK, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  %106 = load i32, i32* @FEATURE_DPM_LINK_BIT, align 4
  %107 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i64, i64* @GNLD_DPM_LINK, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* @FEATURE_DPM_DCEFCLK_BIT, align 4
  %114 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i64, i64* @GNLD_DPM_DCEFCLK, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %113, i32* %119, align 4
  %120 = load i32, i32* @FEATURE_ULV_BIT, align 4
  %121 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %122 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i64, i64* @GNLD_ULV, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* @FEATURE_AVFS_BIT, align 4
  %128 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %129 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i64, i64* @GNLD_AVFS, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* @FEATURE_DS_GFXCLK_BIT, align 4
  %135 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i64, i64* @GNLD_DS_GFXCLK, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* @FEATURE_DS_SOCCLK_BIT, align 4
  %142 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %143 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i64, i64* @GNLD_DS_SOCCLK, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %141, i32* %147, align 4
  %148 = load i32, i32* @FEATURE_DS_LCLK_BIT, align 4
  %149 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %150 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load i64, i64* @GNLD_DS_LCLK, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %148, i32* %154, align 4
  %155 = load i32, i32* @FEATURE_PPT_BIT, align 4
  %156 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i64, i64* @GNLD_PPT, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* @FEATURE_TDC_BIT, align 4
  %163 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %164 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i64, i64* @GNLD_TDC, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* @FEATURE_THERMAL_BIT, align 4
  %170 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %171 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i64, i64* @GNLD_THERMAL, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %169, i32* %175, align 4
  %176 = load i32, i32* @FEATURE_GFX_PER_CU_CG_BIT, align 4
  %177 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i64, i64* @GNLD_GFX_PER_CU_CG, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 %176, i32* %182, align 4
  %183 = load i32, i32* @FEATURE_RM_BIT, align 4
  %184 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %185 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i64, i64* @GNLD_RM, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i32 %183, i32* %189, align 4
  %190 = load i32, i32* @FEATURE_DS_DCEFCLK_BIT, align 4
  %191 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %192 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i64, i64* @GNLD_DS_DCEFCLK, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  store i32 %190, i32* %196, align 4
  %197 = load i32, i32* @FEATURE_ACDC_BIT, align 4
  %198 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %199 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i64, i64* @GNLD_ACDC, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i32 %197, i32* %203, align 4
  %204 = load i32, i32* @FEATURE_VR0HOT_BIT, align 4
  %205 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %206 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load i64, i64* @GNLD_VR0HOT, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i32 %204, i32* %210, align 4
  %211 = load i32, i32* @FEATURE_VR1HOT_BIT, align 4
  %212 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %213 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %212, i32 0, i32 0
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load i64, i64* @GNLD_VR1HOT, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  store i32 %211, i32* %217, align 4
  %218 = load i32, i32* @FEATURE_FW_CTF_BIT, align 4
  %219 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %220 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %219, i32 0, i32 0
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = load i64, i64* @GNLD_FW_CTF, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 %218, i32* %224, align 4
  %225 = load i32, i32* @FEATURE_LED_DISPLAY_BIT, align 4
  %226 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %227 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %226, i32 0, i32 0
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i64, i64* @GNLD_LED_DISPLAY, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  store i32 %225, i32* %231, align 4
  %232 = load i32, i32* @FEATURE_FAN_CONTROL_BIT, align 4
  %233 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %234 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %233, i32 0, i32 0
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  store i32 %232, i32* %238, align 4
  %239 = load i32, i32* @FEATURE_ACG_BIT, align 4
  %240 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %241 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %240, i32 0, i32 0
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i64, i64* @GNLD_ACG, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32 %239, i32* %245, align 4
  %246 = load i32, i32* @FEATURE_GFX_EDC_BIT, align 4
  %247 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %248 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %247, i32 0, i32 0
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = load i64, i64* @GNLD_DIDT, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  store i32 %246, i32* %252, align 4
  %253 = load i32, i32* @FEATURE_PCC_LIMIT_CONTROL_BIT, align 4
  %254 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %255 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %254, i32 0, i32 0
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = load i64, i64* @GNLD_PCC_LIMIT, align 8
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  store i32 %253, i32* %259, align 4
  %260 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %261 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 16
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %56
  %266 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %267 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %266, i32 0, i32 0
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = load i64, i64* @GNLD_DPM_PREFETCHER, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 3
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %265, %56
  %273 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %274 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 15
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %272
  %279 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %280 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %279, i32 0, i32 0
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load i64, i64* @GNLD_DPM_GFXCLK, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 3
  store i32 1, i32* %284, align 4
  br label %285

285:                                              ; preds = %278, %272
  %286 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %287 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 14
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %285
  %292 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %293 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %292, i32 0, i32 0
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = load i64, i64* @GNLD_DPM_UCLK, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 3
  store i32 1, i32* %297, align 4
  br label %298

298:                                              ; preds = %291, %285
  %299 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %300 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 13
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %298
  %305 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %306 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %305, i32 0, i32 0
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load i64, i64* @GNLD_DPM_SOCCLK, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 3
  store i32 1, i32* %310, align 4
  br label %311

311:                                              ; preds = %304, %298
  %312 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %313 = call i64 @PP_CAP(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %317 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %316, i32 0, i32 0
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = load i64, i64* @GNLD_DPM_UVD, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 3
  store i32 1, i32* %321, align 4
  br label %322

322:                                              ; preds = %315, %311
  %323 = load i32, i32* @PHM_PlatformCaps_VCEDPM, align 4
  %324 = call i64 @PP_CAP(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %328 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %327, i32 0, i32 0
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %328, align 8
  %330 = load i64, i64* @GNLD_DPM_VCE, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 3
  store i32 1, i32* %332, align 4
  br label %333

333:                                              ; preds = %326, %322
  %334 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %335 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 12
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %346, label %339

339:                                              ; preds = %333
  %340 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %341 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %340, i32 0, i32 0
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %341, align 8
  %343 = load i64, i64* @GNLD_DPM_LINK, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 3
  store i32 1, i32* %345, align 4
  br label %346

346:                                              ; preds = %339, %333
  %347 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %348 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 11
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %346
  %353 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %354 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %353, i32 0, i32 0
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %354, align 8
  %356 = load i64, i64* @GNLD_DPM_DCEFCLK, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 3
  store i32 1, i32* %358, align 4
  br label %359

359:                                              ; preds = %352, %346
  %360 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %361 = call i64 @PP_CAP(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %394

363:                                              ; preds = %359
  %364 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %365 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 10
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %394

369:                                              ; preds = %363
  %370 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %371 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %370, i32 0, i32 0
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = load i64, i64* @GNLD_DS_GFXCLK, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 3
  store i32 1, i32* %375, align 4
  %376 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %377 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %376, i32 0, i32 0
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %377, align 8
  %379 = load i64, i64* @GNLD_DS_SOCCLK, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 3
  store i32 1, i32* %381, align 4
  %382 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %383 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %382, i32 0, i32 0
  %384 = load %struct.TYPE_6__*, %struct.TYPE_6__** %383, align 8
  %385 = load i64, i64* @GNLD_DS_LCLK, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 3
  store i32 1, i32* %387, align 4
  %388 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %389 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %388, i32 0, i32 0
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = load i64, i64* @GNLD_DS_DCEFCLK, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 3
  store i32 1, i32* %393, align 4
  br label %394

394:                                              ; preds = %369, %363, %359
  %395 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %396 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 9
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %394
  %401 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %402 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %401, i32 0, i32 0
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %402, align 8
  %404 = load i64, i64* @GNLD_PPT, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 3
  store i32 1, i32* %406, align 4
  br label %407

407:                                              ; preds = %400, %394
  %408 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %409 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 8
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %420

413:                                              ; preds = %407
  %414 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %415 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %414, i32 0, i32 0
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %415, align 8
  %417 = load i64, i64* @GNLD_TDC, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 3
  store i32 1, i32* %419, align 4
  br label %420

420:                                              ; preds = %413, %407
  %421 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %422 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 7
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %420
  %427 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %428 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %427, i32 0, i32 0
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %428, align 8
  %430 = load i64, i64* @GNLD_THERMAL, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 3
  store i32 1, i32* %432, align 4
  br label %433

433:                                              ; preds = %426, %420
  %434 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %435 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 6
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %433
  %440 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %441 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %440, i32 0, i32 0
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %441, align 8
  %443 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 3
  store i32 1, i32* %445, align 4
  br label %446

446:                                              ; preds = %439, %433
  %447 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %448 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 5
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %446
  %453 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %454 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %453, i32 0, i32 0
  %455 = load %struct.TYPE_6__*, %struct.TYPE_6__** %454, align 8
  %456 = load i64, i64* @GNLD_FW_CTF, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 3
  store i32 1, i32* %458, align 4
  br label %459

459:                                              ; preds = %452, %446
  %460 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %461 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 4
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %472

465:                                              ; preds = %459
  %466 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %467 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %466, i32 0, i32 0
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %467, align 8
  %469 = load i64, i64* @GNLD_AVFS, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 3
  store i32 1, i32* %471, align 4
  br label %472

472:                                              ; preds = %465, %459
  %473 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %474 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %472
  %479 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %480 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %479, i32 0, i32 0
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %480, align 8
  %482 = load i64, i64* @GNLD_LED_DISPLAY, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 3
  store i32 1, i32* %484, align 4
  br label %485

485:                                              ; preds = %478, %472
  %486 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %487 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %485
  %492 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %493 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %492, i32 0, i32 0
  %494 = load %struct.TYPE_6__*, %struct.TYPE_6__** %493, align 8
  %495 = load i64, i64* @GNLD_VR1HOT, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 3
  store i32 1, i32* %497, align 4
  br label %498

498:                                              ; preds = %491, %485
  %499 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %500 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %511

504:                                              ; preds = %498
  %505 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %506 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %505, i32 0, i32 0
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %506, align 8
  %508 = load i64, i64* @GNLD_VR0HOT, align 8
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 3
  store i32 1, i32* %510, align 4
  br label %511

511:                                              ; preds = %504, %498
  %512 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %513 = load i32, i32* @PPSMC_MSG_GetSmuVersion, align 4
  %514 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %512, i32 %513)
  %515 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %516 = call i8* @smum_get_argument(%struct.pp_hwmgr* %515)
  %517 = ptrtoint i8* %516 to i32
  %518 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %519 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %518, i32 0, i32 0
  store i32 %517, i32* %519, align 8
  %520 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %521 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = and i32 %522, -16777216
  %524 = icmp eq i32 %523, 83886080
  br i1 %524, label %525, label %532

525:                                              ; preds = %511
  %526 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %527 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %526, i32 0, i32 0
  %528 = load %struct.TYPE_6__*, %struct.TYPE_6__** %527, align 8
  %529 = load i64, i64* @GNLD_ACG, align 8
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %528, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 3
  store i32 1, i32* %531, align 4
  br label %532

532:                                              ; preds = %525, %511
  %533 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %534 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %532
  %539 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %540 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %539, i32 0, i32 0
  %541 = load %struct.TYPE_6__*, %struct.TYPE_6__** %540, align 8
  %542 = load i64, i64* @GNLD_DIDT, align 8
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %541, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 3
  store i32 1, i32* %544, align 4
  br label %545

545:                                              ; preds = %538, %532
  %546 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %547 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %546, i32 0, i32 1
  %548 = load %struct.TYPE_5__*, %struct.TYPE_5__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %6, align 8
  %551 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %552 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %551, i32 0, i32 1
  %553 = load %struct.TYPE_5__*, %struct.TYPE_5__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %553, i32 0, i32 1
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %5, align 8
  %556 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %557 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = icmp eq i32 %558, 26722
  br i1 %559, label %570, label %560

560:                                              ; preds = %545
  %561 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %562 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = icmp eq i32 %563, 26721
  br i1 %564, label %570, label %565

565:                                              ; preds = %560
  %566 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %567 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %568, 26728
  br i1 %569, label %570, label %583

570:                                              ; preds = %565, %560, %545
  %571 = load i64, i64* %6, align 8
  %572 = icmp eq i64 %571, 0
  br i1 %572, label %573, label %583

573:                                              ; preds = %570
  %574 = load i64, i64* %5, align 8
  %575 = icmp ne i64 %574, 4098
  br i1 %575, label %576, label %583

576:                                              ; preds = %573
  %577 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %3, align 8
  %578 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %577, i32 0, i32 0
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %578, align 8
  %580 = load i64, i64* @GNLD_PCC_LIMIT, align 8
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i64 %580
  %582 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %581, i32 0, i32 3
  store i32 1, i32* %582, align 4
  br label %583

583:                                              ; preds = %576, %573, %570, %565
  %584 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %585 = load i32, i32* @PPSMC_MSG_ReadSerialNumTop32, align 4
  %586 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %584, i32 %585)
  %587 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %588 = call i8* @smum_get_argument(%struct.pp_hwmgr* %587)
  %589 = ptrtoint i8* %588 to i64
  store i64 %589, i64* %7, align 8
  %590 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %591 = load i32, i32* @PPSMC_MSG_ReadSerialNumBottom32, align 4
  %592 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %590, i32 %591)
  %593 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %594 = call i8* @smum_get_argument(%struct.pp_hwmgr* %593)
  %595 = ptrtoint i8* %594 to i64
  store i64 %595, i64* %8, align 8
  %596 = load i64, i64* %8, align 8
  %597 = trunc i64 %596 to i32
  %598 = shl i32 %597, 32
  %599 = sext i32 %598 to i64
  %600 = load i64, i64* %7, align 8
  %601 = or i64 %599, %600
  %602 = trunc i64 %601 to i32
  %603 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %604 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %603, i32 0, i32 0
  store i32 %602, i32* %604, align 8
  ret void
}

declare dso_local i32 @vega10_initialize_power_tune_defaults(%struct.pp_hwmgr*) #1

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i8* @smum_get_argument(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
