; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_initialize_dpm_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_initialize_dpm_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, %struct.amdgpu_device*, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.smu8_hwmgr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@PHM_PlatformCaps_ABM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_NonABMSupportInPPLib = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicM3Arbiter = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPatchPowerState = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicUVDState = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DisableVoltageIsland = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDPowerGating = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEPowerGating = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_initialize_dpm_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_initialize_dpm_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 2
  %7 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %6, align 8
  store %struct.smu8_hwmgr* %7, %struct.smu8_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %12 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %11, i32 0, i32 0
  store i32 64, i32* %12, align 8
  %13 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %19, i32 0, i32 4
  store i32 25000, i32* %20, align 8
  %21 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %21, i32 0, i32 5
  store i32 1, i32* %22, align 4
  %23 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %23, i32 0, i32 6
  store i32 1, i32* %24, align 8
  %25 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %26 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %25, i32 0, i32 22
  store i64 0, i64* %26, align 8
  %27 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %27, i32 0, i32 7
  store i32 12582963, i32* %28, align 4
  %29 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %29, i32 0, i32 8
  store i32 8, i32* %30, align 8
  %31 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %31, i32 0, i32 21
  store i64 0, i64* %32, align 8
  %33 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %33, i32 0, i32 9
  store i32 1, i32* %34, align 4
  %35 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %35, i32 0, i32 20
  store i64 0, i64* %36, align 8
  %37 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %37, i32 0, i32 10
  store i32 500, i32* %38, align 8
  %39 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %39, i32 0, i32 11
  store i32 20000, i32* %40, align 4
  %41 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %42 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %41, i32 0, i32 12
  store i32 30000, i32* %42, align 8
  %43 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %43, i32 0, i32 13
  store i32 1, i32* %44, align 4
  %45 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %45, i32 0, i32 19
  store i64 0, i64* %46, align 8
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PHM_PlatformCaps_ABM, align 4
  %52 = call i32 @phm_cap_unset(i32 %50, i32 %51)
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %54 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PHM_PlatformCaps_NonABMSupportInPPLib, align 4
  %58 = call i32 @phm_cap_set(i32 %56, i32 %57)
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PHM_PlatformCaps_DynamicM3Arbiter, align 4
  %64 = call i32 @phm_cap_unset(i32 %62, i32 %63)
  %65 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %65, i32 0, i32 14
  store i32 1, i32* %66, align 8
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %68 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PHM_PlatformCaps_DynamicPatchPowerState, align 4
  %72 = call i32 @phm_cap_set(i32 %70, i32 %71)
  %73 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %74 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %73, i32 0, i32 18
  store i64 0, i64* %74, align 8
  %75 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %76 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %75, i32 0, i32 17
  store i64 0, i64* %76, align 8
  %77 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %77, i32 0, i32 16
  store i64 0, i64* %78, align 8
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PHM_PlatformCaps_DynamicUVDState, align 4
  %84 = call i32 @phm_cap_set(i32 %82, i32 %83)
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %86 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %90 = call i32 @phm_cap_set(i32 %88, i32 %89)
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %92 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PHM_PlatformCaps_VCEDPM, align 4
  %96 = call i32 @phm_cap_set(i32 %94, i32 %95)
  %97 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %98 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %101 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %104 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %107 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PHM_PlatformCaps_DisableVoltageIsland, align 4
  %114 = call i32 @phm_cap_set(i32 %112, i32 %113)
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %120 = call i32 @phm_cap_unset(i32 %118, i32 %119)
  %121 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %122 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %126 = call i32 @phm_cap_unset(i32 %124, i32 %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %1
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %135 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PHM_PlatformCaps_UVDPowerGating, align 4
  %139 = call i32 @phm_cap_set(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %1
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %149 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @PHM_PlatformCaps_VCEPowerGating, align 4
  %153 = call i32 @phm_cap_set(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %147, %140
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
