; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_init_default_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hwmgr.c_hwmgr_init_default_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PHM_PlatformCaps_PCIEPerformanceRequest = common dso_local global i32 0, align 4
@PHM_PlatformCaps_UVDDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_VCEDPM = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPatchPowerState = common dso_local global i32 0, align 4
@PHM_PlatformCaps_EnableSMU7ThermalManagement = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicPowerManagement = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SMC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DynamicUVDState = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwmgr_init_default_caps(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %3 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %4 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PHM_PlatformCaps_PCIEPerformanceRequest, align 4
  %8 = call i32 @phm_cap_unset(i32 %6, i32 %7)
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PHM_PlatformCaps_UVDDPM, align 4
  %14 = call i32 @phm_cap_set(i32 %12, i32 %13)
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHM_PlatformCaps_VCEDPM, align 4
  %20 = call i32 @phm_cap_set(i32 %18, i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PHM_PlatformCaps_DynamicPatchPowerState, align 4
  %26 = call i32 @phm_cap_set(i32 %24, i32 %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PHM_PlatformCaps_EnableSMU7ThermalManagement, align 4
  %32 = call i32 @phm_cap_set(i32 %30, i32 %31)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PHM_PlatformCaps_DynamicPowerManagement, align 4
  %38 = call i32 @phm_cap_set(i32 %36, i32 %37)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %40 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PHM_PlatformCaps_SMC, align 4
  %44 = call i32 @phm_cap_set(i32 %42, i32 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PHM_PlatformCaps_DynamicUVDState, align 4
  %50 = call i32 @phm_cap_set(i32 %48, i32 %49)
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %56 = call i32 @phm_cap_set(i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @phm_cap_unset(i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
