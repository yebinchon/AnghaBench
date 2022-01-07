; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_init_dpm_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_init_dpm_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device*, i64 }
%struct.amdgpu_device = type { i32 }
%struct.vega20_hwmgr = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@FEATURE_DPM_PREFETCHER_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_PREFETCHER = common dso_local global i64 0, align 8
@FEATURE_DPM_GFXCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_GFXCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_UCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_UCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_SOCCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_SOCCLK = common dso_local global i64 0, align 8
@FEATURE_DPM_UVD_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_UVD = common dso_local global i64 0, align 8
@FEATURE_DPM_VCE_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_VCE = common dso_local global i64 0, align 8
@FEATURE_ULV_BIT = common dso_local global i64 0, align 8
@GNLD_ULV = common dso_local global i64 0, align 8
@FEATURE_DPM_MP0CLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_MP0CLK = common dso_local global i64 0, align 8
@FEATURE_DPM_LINK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_LINK = common dso_local global i64 0, align 8
@FEATURE_DPM_DCEFCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_DCEFCLK = common dso_local global i64 0, align 8
@FEATURE_DS_GFXCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_GFXCLK = common dso_local global i64 0, align 8
@FEATURE_DS_SOCCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_SOCCLK = common dso_local global i64 0, align 8
@FEATURE_DS_LCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_LCLK = common dso_local global i64 0, align 8
@FEATURE_PPT_BIT = common dso_local global i64 0, align 8
@GNLD_PPT = common dso_local global i64 0, align 8
@FEATURE_TDC_BIT = common dso_local global i64 0, align 8
@GNLD_TDC = common dso_local global i64 0, align 8
@FEATURE_THERMAL_BIT = common dso_local global i64 0, align 8
@GNLD_THERMAL = common dso_local global i64 0, align 8
@FEATURE_GFX_PER_CU_CG_BIT = common dso_local global i64 0, align 8
@GNLD_GFX_PER_CU_CG = common dso_local global i64 0, align 8
@FEATURE_RM_BIT = common dso_local global i64 0, align 8
@GNLD_RM = common dso_local global i64 0, align 8
@FEATURE_DS_DCEFCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_DCEFCLK = common dso_local global i64 0, align 8
@FEATURE_ACDC_BIT = common dso_local global i64 0, align 8
@GNLD_ACDC = common dso_local global i64 0, align 8
@FEATURE_VR0HOT_BIT = common dso_local global i64 0, align 8
@GNLD_VR0HOT = common dso_local global i64 0, align 8
@FEATURE_VR1HOT_BIT = common dso_local global i64 0, align 8
@GNLD_VR1HOT = common dso_local global i64 0, align 8
@FEATURE_FW_CTF_BIT = common dso_local global i64 0, align 8
@GNLD_FW_CTF = common dso_local global i64 0, align 8
@FEATURE_LED_DISPLAY_BIT = common dso_local global i64 0, align 8
@GNLD_LED_DISPLAY = common dso_local global i64 0, align 8
@FEATURE_FAN_CONTROL_BIT = common dso_local global i64 0, align 8
@GNLD_FAN_CONTROL = common dso_local global i64 0, align 8
@FEATURE_GFX_EDC_BIT = common dso_local global i64 0, align 8
@GNLD_DIDT = common dso_local global i64 0, align 8
@FEATURE_GFXOFF_BIT = common dso_local global i64 0, align 8
@GNLD_GFXOFF = common dso_local global i64 0, align 8
@FEATURE_CG_BIT = common dso_local global i64 0, align 8
@GNLD_CG = common dso_local global i64 0, align 8
@FEATURE_DPM_FCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DPM_FCLK = common dso_local global i64 0, align 8
@FEATURE_DS_FCLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_FCLK = common dso_local global i64 0, align 8
@FEATURE_DS_MP1CLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_MP1CLK = common dso_local global i64 0, align 8
@FEATURE_DS_MP0CLK_BIT = common dso_local global i64 0, align 8
@GNLD_DS_MP0CLK = common dso_local global i64 0, align 8
@FEATURE_XGMI_BIT = common dso_local global i64 0, align 8
@GNLD_XGMI = common dso_local global i64 0, align 8
@FEATURE_ECC_BIT = common dso_local global i64 0, align 8
@GNLD_ECC = common dso_local global i64 0, align 8
@GNLD_FEATURES_MAX = common dso_local global i32 0, align 4
@PPSMC_MSG_ReadSerialNumTop32 = common dso_local global i32 0, align 4
@PPSMC_MSG_ReadSerialNumBottom32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega20_init_dpm_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega20_init_dpm_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %11, %struct.vega20_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %4, align 8
  %15 = load i64, i64* @FEATURE_DPM_PREFETCHER_BIT, align 8
  %16 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* @GNLD_DPM_PREFETCHER, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %15, i64* %21, align 8
  %22 = load i64, i64* @FEATURE_DPM_GFXCLK_BIT, align 8
  %23 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* @GNLD_DPM_GFXCLK, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %22, i64* %28, align 8
  %29 = load i64, i64* @FEATURE_DPM_UCLK_BIT, align 8
  %30 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* @GNLD_DPM_UCLK, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 %29, i64* %35, align 8
  %36 = load i64, i64* @FEATURE_DPM_SOCCLK_BIT, align 8
  %37 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* @GNLD_DPM_SOCCLK, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i64 %36, i64* %42, align 8
  %43 = load i64, i64* @FEATURE_DPM_UVD_BIT, align 8
  %44 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %45 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* @GNLD_DPM_UVD, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 %43, i64* %49, align 8
  %50 = load i64, i64* @FEATURE_DPM_VCE_BIT, align 8
  %51 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* @GNLD_DPM_VCE, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %50, i64* %56, align 8
  %57 = load i64, i64* @FEATURE_ULV_BIT, align 8
  %58 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* @GNLD_ULV, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %57, i64* %63, align 8
  %64 = load i64, i64* @FEATURE_DPM_MP0CLK_BIT, align 8
  %65 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* @GNLD_DPM_MP0CLK, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %64, i64* %70, align 8
  %71 = load i64, i64* @FEATURE_DPM_LINK_BIT, align 8
  %72 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %73 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* @GNLD_DPM_LINK, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %71, i64* %77, align 8
  %78 = load i64, i64* @FEATURE_DPM_DCEFCLK_BIT, align 8
  %79 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %80 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* @GNLD_DPM_DCEFCLK, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i64 %78, i64* %84, align 8
  %85 = load i64, i64* @FEATURE_DS_GFXCLK_BIT, align 8
  %86 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %87 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* @GNLD_DS_GFXCLK, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %85, i64* %91, align 8
  %92 = load i64, i64* @FEATURE_DS_SOCCLK_BIT, align 8
  %93 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %94 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i64, i64* @GNLD_DS_SOCCLK, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i64 %92, i64* %98, align 8
  %99 = load i64, i64* @FEATURE_DS_LCLK_BIT, align 8
  %100 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* @GNLD_DS_LCLK, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i64 %99, i64* %105, align 8
  %106 = load i64, i64* @FEATURE_PPT_BIT, align 8
  %107 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i64, i64* @GNLD_PPT, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 %106, i64* %112, align 8
  %113 = load i64, i64* @FEATURE_TDC_BIT, align 8
  %114 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i64, i64* @GNLD_TDC, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i64 %113, i64* %119, align 8
  %120 = load i64, i64* @FEATURE_THERMAL_BIT, align 8
  %121 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %122 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i64, i64* @GNLD_THERMAL, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i64 %120, i64* %126, align 8
  %127 = load i64, i64* @FEATURE_GFX_PER_CU_CG_BIT, align 8
  %128 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %129 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* @GNLD_GFX_PER_CU_CG, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i64 %127, i64* %133, align 8
  %134 = load i64, i64* @FEATURE_RM_BIT, align 8
  %135 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i64, i64* @GNLD_RM, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i64 %134, i64* %140, align 8
  %141 = load i64, i64* @FEATURE_DS_DCEFCLK_BIT, align 8
  %142 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %143 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i64, i64* @GNLD_DS_DCEFCLK, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i64 %141, i64* %147, align 8
  %148 = load i64, i64* @FEATURE_ACDC_BIT, align 8
  %149 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %150 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i64, i64* @GNLD_ACDC, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i64 %148, i64* %154, align 8
  %155 = load i64, i64* @FEATURE_VR0HOT_BIT, align 8
  %156 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i64, i64* @GNLD_VR0HOT, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i64 %155, i64* %161, align 8
  %162 = load i64, i64* @FEATURE_VR1HOT_BIT, align 8
  %163 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %164 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = load i64, i64* @GNLD_VR1HOT, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i64 %162, i64* %168, align 8
  %169 = load i64, i64* @FEATURE_FW_CTF_BIT, align 8
  %170 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %171 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %170, i32 0, i32 1
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i64, i64* @GNLD_FW_CTF, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i64 %169, i64* %175, align 8
  %176 = load i64, i64* @FEATURE_LED_DISPLAY_BIT, align 8
  %177 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %177, i32 0, i32 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = load i64, i64* @GNLD_LED_DISPLAY, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i64 %176, i64* %182, align 8
  %183 = load i64, i64* @FEATURE_FAN_CONTROL_BIT, align 8
  %184 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %185 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i64, i64* @GNLD_FAN_CONTROL, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store i64 %183, i64* %189, align 8
  %190 = load i64, i64* @FEATURE_GFX_EDC_BIT, align 8
  %191 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %192 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %191, i32 0, i32 1
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i64, i64* @GNLD_DIDT, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  store i64 %190, i64* %196, align 8
  %197 = load i64, i64* @FEATURE_GFXOFF_BIT, align 8
  %198 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %199 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = load i64, i64* @GNLD_GFXOFF, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i64 %197, i64* %203, align 8
  %204 = load i64, i64* @FEATURE_CG_BIT, align 8
  %205 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %206 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %205, i32 0, i32 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = load i64, i64* @GNLD_CG, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i64 %204, i64* %210, align 8
  %211 = load i64, i64* @FEATURE_DPM_FCLK_BIT, align 8
  %212 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %213 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %212, i32 0, i32 1
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %213, align 8
  %215 = load i64, i64* @GNLD_DPM_FCLK, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i64 %211, i64* %217, align 8
  %218 = load i64, i64* @FEATURE_DS_FCLK_BIT, align 8
  %219 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %220 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %219, i32 0, i32 1
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %220, align 8
  %222 = load i64, i64* @GNLD_DS_FCLK, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  store i64 %218, i64* %224, align 8
  %225 = load i64, i64* @FEATURE_DS_MP1CLK_BIT, align 8
  %226 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %227 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %226, i32 0, i32 1
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = load i64, i64* @GNLD_DS_MP1CLK, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i64 %225, i64* %231, align 8
  %232 = load i64, i64* @FEATURE_DS_MP0CLK_BIT, align 8
  %233 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %234 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %233, i32 0, i32 1
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %234, align 8
  %236 = load i64, i64* @GNLD_DS_MP0CLK, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  store i64 %232, i64* %238, align 8
  %239 = load i64, i64* @FEATURE_XGMI_BIT, align 8
  %240 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %241 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %240, i32 0, i32 1
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = load i64, i64* @GNLD_XGMI, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i64 %239, i64* %245, align 8
  %246 = load i64, i64* @FEATURE_ECC_BIT, align 8
  %247 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %248 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %247, i32 0, i32 1
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i64, i64* @GNLD_ECC, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  store i64 %246, i64* %252, align 8
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %292, %1
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @GNLD_FEATURES_MAX, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %295

257:                                              ; preds = %253
  %258 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %259 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %258, i32 0, i32 1
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = shl i64 1, %265
  %267 = trunc i64 %266 to i32
  %268 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %269 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %268, i32 0, i32 1
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  store i32 %267, i32* %274, align 8
  %275 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %276 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = ashr i32 %278, %279
  %281 = and i32 %280, 1
  %282 = icmp ne i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 0, i32 1
  %285 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %286 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %285, i32 0, i32 1
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 2
  store i32 %284, i32* %291, align 4
  br label %292

292:                                              ; preds = %257
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %253

295:                                              ; preds = %253
  %296 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %297 = load i32, i32* @PPSMC_MSG_ReadSerialNumTop32, align 4
  %298 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %296, i32 %297)
  %299 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %300 = call i32 @smum_get_argument(%struct.pp_hwmgr* %299)
  store i32 %300, i32* %5, align 4
  %301 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %302 = load i32, i32* @PPSMC_MSG_ReadSerialNumBottom32, align 4
  %303 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %301, i32 %302)
  %304 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %305 = call i32 @smum_get_argument(%struct.pp_hwmgr* %304)
  store i32 %305, i32* %6, align 4
  %306 = load i32, i32* %6, align 4
  %307 = shl i32 %306, 32
  %308 = load i32, i32* %5, align 4
  %309 = or i32 %307, %308
  %310 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %311 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 4
  ret void
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
