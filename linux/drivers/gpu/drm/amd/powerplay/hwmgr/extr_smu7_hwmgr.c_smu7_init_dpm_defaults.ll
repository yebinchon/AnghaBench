; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_init_dpm_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_init_dpm_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32*, i64, i64, i64, i64, i64, %struct.TYPE_15__, i64, %struct.amdgpu_device*, i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.smu7_hwmgr = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i8*, %struct.TYPE_9__, %struct.TYPE_16__, i32, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@SMU7_STATICSCREENTHRESHOLD_DFLT = common dso_local global i32 0, align 4
@SMU7_STATICSCREENTHRESHOLDUNIT_DFLT = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT0 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT1 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT2 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT3 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT4 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT5 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT6 = common dso_local global i32 0, align 4
@SMU7_VOTINGRIGHTSCLIENTS_DFLT7 = common dso_local global i32 0, align 4
@PP_MCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_SCLK_DPM_MASK = common dso_local global i32 0, align 4
@PP_PCIE_DPM_MASK = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@PP_PCIEGenInvalid = common dso_local global i32 0, align 4
@PP_ULV_MASK = common dso_local global i32 0, align 4
@SMU7_SCLK_TARGETACTIVITY_DFLT = common dso_local global i32 0, align 4
@SMU7_MCLK_TARGETACTIVITY_DFLT = common dso_local global i32 0, align 4
@PP_SMC_POWER_PROFILE_FULLSCREEN3D = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@VOLTAGE_TYPE_VDDC = common dso_local global i32 0, align 4
@AMDGPU_FAMILY_CI = common dso_local global i64 0, align 8
@CHIP_HAWAII = common dso_local global i64 0, align 8
@VOLTAGE_OBJ_SVID2 = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_BY_SVID2 = common dso_local global i8* null, align 8
@VOLTAGE_OBJ_GPIO_LUT = common dso_local global i32 0, align 4
@SMU7_VOLTAGE_CONTROL_BY_GPIO = common dso_local global i8* null, align 8
@PHM_PlatformCaps_ControlVDDGFX = common dso_local global i32 0, align 4
@VOLTAGE_TYPE_VDDGFX = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableMVDDControl = common dso_local global i32 0, align 4
@VOLTAGE_TYPE_MVDDC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ControlVDDCI = common dso_local global i32 0, align 4
@VOLTAGE_TYPE_VDDCI = common dso_local global i32 0, align 4
@PP_TABLE_V0 = common dso_local global i64 0, align 8
@PP_CLOCK_STRETCH_MASK = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ClockStretcher = common dso_local global i32 0, align 4
@PP_PCIEGen1 = common dso_local global i8* null, align 8
@PP_PCIEGen3 = common dso_local global i8* null, align 8
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDPowerGating = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEPowerGating = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @smu7_init_dpm_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu7_init_dpm_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.phm_ppt_v1_information*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %16, %struct.phm_ppt_v1_information** %4, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 10
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %5, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %23 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %22, i32 0, i32 1
  store i32 10, i32* %23, align 4
  %24 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %24, i32 0, i32 2
  store i32 300, i32* %25, align 8
  %26 = load i32, i32* @SMU7_STATICSCREENTHRESHOLD_DFLT, align 4
  %27 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %27, i32 0, i32 24
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @SMU7_STATICSCREENTHRESHOLDUNIT_DFLT, align 4
  %30 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %30, i32 0, i32 23
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT0, align 4
  %33 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %33, i32 0, i32 22
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT1, align 4
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 22
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT2, align 4
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 22
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT3, align 4
  %48 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %48, i32 0, i32 22
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT4, align 4
  %53 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %54 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %53, i32 0, i32 22
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT5, align 4
  %58 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %59 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %58, i32 0, i32 22
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT6, align 4
  %63 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %63, i32 0, i32 22
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @SMU7_VOTINGRIGHTSCLIENTS_DFLT7, align 4
  %68 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %69 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %68, i32 0, i32 22
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  store i32 %67, i32* %71, align 4
  %72 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %73 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PP_MCLK_DPM_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %81 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %83 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PP_SCLK_DPM_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 1
  %90 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %91 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %93 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PP_PCIE_DPM_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %105 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %104, i32 0, i32 18
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %107 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %107, i32 0, i32 6
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %110 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %111 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %113 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %112, i32 0, i32 8
  store i32 1, i32* %113, align 8
  %114 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %115 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %114, i32 0, i32 9
  store i32 1, i32* %115, align 4
  %116 = load i32, i32* @PP_PCIEGenInvalid, align 4
  %117 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %118 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %117, i32 0, i32 21
  store i32 %116, i32* %118, align 8
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %120 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PP_ULV_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  %127 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %128 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %129, i32 0, i32 20
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %133 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %132, i32 0, i32 20
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %135, i32 0, i32 20
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  store i32 100, i32* %137, align 4
  %138 = load i32, i32* @SMU7_SCLK_TARGETACTIVITY_DFLT, align 4
  %139 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %140 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %139, i32 0, i32 20
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  %142 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %143 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %142, i32 0, i32 20
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %146 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %145, i32 0, i32 20
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %149 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %148, i32 0, i32 20
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  store i32 100, i32* %150, align 4
  %151 = load i32, i32* @SMU7_MCLK_TARGETACTIVITY_DFLT, align 4
  %152 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %153 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %152, i32 0, i32 20
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 8
  %155 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %156 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 1, %160
  %162 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %163 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* @PP_SMC_POWER_PROFILE_FULLSCREEN3D, align 8
  %168 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %169 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  %170 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %171 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @CHIP_POLARIS12, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %1
  %176 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %177 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %176, i32 0, i32 9
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %175, %1
  store i32 0, i32* %8, align 4
  %181 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %182 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %183 = call i32 @atomctrl_get_svi2_info(%struct.pp_hwmgr* %181, i32 %182, i32* %6, i32* %7, i32* %8)
  %184 = load i32, i32* %8, align 4
  %185 = ashr i32 %184, 5
  %186 = and i32 %185, 3
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = shl i32 %187, 1
  %189 = load i32, i32* %8, align 4
  %190 = ashr i32 %189, 1
  %191 = or i32 %188, %190
  %192 = and i32 %191, 3
  %193 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %194 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %193, i32 0, i32 11
  store i32 %192, i32* %194, align 4
  br label %208

195:                                              ; preds = %175
  %196 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %197 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AMDGPU_FAMILY_CI, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %203 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %202, i32 0, i32 11
  store i32 1, i32* %203, align 4
  br label %207

204:                                              ; preds = %195
  %205 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %206 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %205, i32 0, i32 11
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %180
  %209 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %210 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @CHIP_HAWAII, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %216 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %215, i32 0, i32 19
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  store i32 94500, i32* %217, align 8
  %218 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %219 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %218, i32 0, i32 19
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  store i32 95000, i32* %220, align 4
  %221 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %222 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %221, i32 0, i32 19
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  store i32 104000, i32* %223, align 8
  br label %234

224:                                              ; preds = %208
  %225 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %226 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %225, i32 0, i32 19
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  store i32 99500, i32* %227, align 8
  %228 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %229 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %228, i32 0, i32 19
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  store i32 100000, i32* %230, align 4
  %231 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %232 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %231, i32 0, i32 19
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  store i32 104000, i32* %233, align 8
  br label %234

234:                                              ; preds = %224, %214
  %235 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %236 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %235, i32 0, i32 12
  store i32 100, i32* %236, align 8
  %237 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %238 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %239 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %240 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %237, i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %234
  %243 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %244 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %245 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %244, i32 0, i32 18
  store i8* %243, i8** %245, align 8
  br label %257

246:                                              ; preds = %234
  %247 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %248 = load i32, i32* @VOLTAGE_TYPE_VDDC, align 4
  %249 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %250 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %247, i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %254 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %255 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %254, i32 0, i32 18
  store i8* %253, i8** %255, align 8
  br label %256

256:                                              ; preds = %252, %246
  br label %257

257:                                              ; preds = %256, %242
  %258 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %259 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %258, i32 0, i32 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @PHM_PlatformCaps_ControlVDDGFX, align 4
  %263 = call i64 @phm_cap_enabled(i32 %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %277

265:                                              ; preds = %257
  %266 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %267 = load i32, i32* @VOLTAGE_TYPE_VDDGFX, align 4
  %268 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %269 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %266, i32 %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %273 = ptrtoint i8* %272 to i64
  %274 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %275 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %274, i32 0, i32 13
  store i64 %273, i64* %275, align 8
  br label %276

276:                                              ; preds = %271, %265
  br label %277

277:                                              ; preds = %276, %257
  %278 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %279 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %278, i32 0, i32 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @PHM_PlatformCaps_EnableMVDDControl, align 4
  %283 = call i64 @phm_cap_enabled(i32 %281, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %309

285:                                              ; preds = %277
  %286 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %287 = load i32, i32* @VOLTAGE_TYPE_MVDDC, align 4
  %288 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %289 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %286, i32 %287, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %293 = ptrtoint i8* %292 to i64
  %294 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %295 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %294, i32 0, i32 7
  store i64 %293, i64* %295, align 8
  br label %308

296:                                              ; preds = %285
  %297 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %298 = load i32, i32* @VOLTAGE_TYPE_MVDDC, align 4
  %299 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %300 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %297, i32 %298, i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %304 = ptrtoint i8* %303 to i64
  %305 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %306 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %305, i32 0, i32 7
  store i64 %304, i64* %306, align 8
  br label %307

307:                                              ; preds = %302, %296
  br label %308

308:                                              ; preds = %307, %291
  br label %309

309:                                              ; preds = %308, %277
  %310 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %311 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %312 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %311, i32 0, i32 13
  %313 = load i64, i64* %312, align 8
  %314 = icmp eq i64 %310, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %309
  %316 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %317 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %316, i32 0, i32 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @PHM_PlatformCaps_ControlVDDGFX, align 4
  %321 = call i32 @phm_cap_unset(i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %315, %309
  %323 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %324 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %323, i32 0, i32 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @PHM_PlatformCaps_ControlVDDCI, align 4
  %328 = call i64 @phm_cap_enabled(i32 %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %354

330:                                              ; preds = %322
  %331 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %332 = load i32, i32* @VOLTAGE_TYPE_VDDCI, align 4
  %333 = load i32, i32* @VOLTAGE_OBJ_GPIO_LUT, align 4
  %334 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %331, i32 %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %330
  %337 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %338 = ptrtoint i8* %337 to i64
  %339 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %340 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %339, i32 0, i32 6
  store i64 %338, i64* %340, align 8
  br label %353

341:                                              ; preds = %330
  %342 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %343 = load i32, i32* @VOLTAGE_TYPE_VDDCI, align 4
  %344 = load i32, i32* @VOLTAGE_OBJ_SVID2, align 4
  %345 = call i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr* %342, i32 %343, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %341
  %348 = load i8*, i8** @SMU7_VOLTAGE_CONTROL_BY_SVID2, align 8
  %349 = ptrtoint i8* %348 to i64
  %350 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %351 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %350, i32 0, i32 6
  store i64 %349, i64* %351, align 8
  br label %352

352:                                              ; preds = %347, %341
  br label %353

353:                                              ; preds = %352, %336
  br label %354

354:                                              ; preds = %353, %322
  %355 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %356 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %355, i32 0, i32 7
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %367

360:                                              ; preds = %354
  %361 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %362 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %361, i32 0, i32 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @PHM_PlatformCaps_EnableMVDDControl, align 4
  %366 = call i32 @phm_cap_unset(i32 %364, i32 %365)
  br label %367

367:                                              ; preds = %360, %354
  %368 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %369 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %368, i32 0, i32 6
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %380

373:                                              ; preds = %367
  %374 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %375 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %374, i32 0, i32 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @PHM_PlatformCaps_ControlVDDCI, align 4
  %379 = call i32 @phm_cap_unset(i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %373, %367
  %381 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %382 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %381, i32 0, i32 7
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @PP_TABLE_V0, align 8
  %385 = icmp ne i64 %383, %384
  br i1 %385, label %386, label %407

386:                                              ; preds = %380
  %387 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %388 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @PP_CLOCK_STRETCH_MASK, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %407

393:                                              ; preds = %386
  %394 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %4, align 8
  %395 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %394, i32 0, i32 0
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %393
  %401 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %402 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %401, i32 0, i32 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @PHM_PlatformCaps_ClockStretcher, align 4
  %406 = call i32 @phm_cap_set(i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %400, %393, %386, %380
  %408 = load i8*, i8** @PP_PCIEGen1, align 8
  %409 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %410 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %409, i32 0, i32 17
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 1
  store i8* %408, i8** %411, align 8
  %412 = load i8*, i8** @PP_PCIEGen3, align 8
  %413 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %414 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %413, i32 0, i32 17
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  store i8* %412, i8** %415, align 8
  %416 = load i8*, i8** @PP_PCIEGen1, align 8
  %417 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %418 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %417, i32 0, i32 16
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 1
  store i8* %416, i8** %419, align 8
  %420 = load i8*, i8** @PP_PCIEGen3, align 8
  %421 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %422 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %421, i32 0, i32 16
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 0
  store i8* %420, i8** %423, align 8
  %424 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %425 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 1
  store i64 0, i64* %426, align 8
  %427 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %428 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 0
  store i32 16, i32* %429, align 8
  %430 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %431 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %430, i32 0, i32 14
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 1
  store i64 0, i64* %432, align 8
  %433 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %434 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %433, i32 0, i32 14
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 0
  store i32 16, i32* %435, align 8
  %436 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %437 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %449

442:                                              ; preds = %407
  %443 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %444 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %443, i32 0, i32 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %448 = call i32 @phm_cap_set(i32 %446, i32 %447)
  br label %449

449:                                              ; preds = %442, %407
  %450 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %451 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %449
  %457 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %458 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %457, i32 0, i32 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %462 = call i32 @phm_cap_set(i32 %460, i32 %461)
  br label %463

463:                                              ; preds = %456, %449
  ret void
}

declare dso_local i32 @atomctrl_get_svi2_info(%struct.pp_hwmgr*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @atomctrl_is_voltage_controlled_by_gpio_v3(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i64 @phm_cap_enabled(i32, i32) #1

declare dso_local i32 @phm_cap_unset(i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
