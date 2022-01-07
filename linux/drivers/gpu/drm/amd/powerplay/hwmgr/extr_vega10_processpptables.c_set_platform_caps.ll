; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_set_platform_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_set_platform_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@ATOM_VEGA10_PP_PLATFORM_CAP_POWERPLAY = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PowerPlaySupport = common dso_local global i32 0, align 4
@ATOM_VEGA10_PP_PLATFORM_CAP_SBIOSPOWERSOURCE = common dso_local global i32 0, align 4
@PHM_PlatformCaps_BiosPowerSourceControl = common dso_local global i32 0, align 4
@ATOM_VEGA10_PP_PLATFORM_CAP_HARDWAREDC = common dso_local global i32 0, align 4
@PHM_PlatformCaps_AutomaticDCTransition = common dso_local global i32 0, align 4
@ATOM_VEGA10_PP_PLATFORM_CAP_BACO = common dso_local global i32 0, align 4
@PHM_PlatformCaps_BACO = common dso_local global i32 0, align 4
@ATOM_VEGA10_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL = common dso_local global i32 0, align 4
@PHM_PlatformCaps_CombinePCCWithThermalSignal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @set_platform_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_platform_caps(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ATOM_VEGA10_PP_PLATFORM_CAP_POWERPLAY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 0, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @PHM_PlatformCaps_PowerPlaySupport, align 4
  %12 = call i32 @set_hw_cap(%struct.pp_hwmgr* %5, i32 %10, i32 %11)
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ATOM_VEGA10_PP_PLATFORM_CAP_SBIOSPOWERSOURCE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 0, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @PHM_PlatformCaps_BiosPowerSourceControl, align 4
  %20 = call i32 @set_hw_cap(%struct.pp_hwmgr* %13, i32 %18, i32 %19)
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ATOM_VEGA10_PP_PLATFORM_CAP_HARDWAREDC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 0, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @PHM_PlatformCaps_AutomaticDCTransition, align 4
  %28 = call i32 @set_hw_cap(%struct.pp_hwmgr* %21, i32 %26, i32 %27)
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ATOM_VEGA10_PP_PLATFORM_CAP_BACO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 0, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @PHM_PlatformCaps_BACO, align 4
  %36 = call i32 @set_hw_cap(%struct.pp_hwmgr* %29, i32 %34, i32 %35)
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ATOM_VEGA10_PP_PLATFORM_COMBINE_PCC_WITH_THERMAL_SIGNAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 0, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @PHM_PlatformCaps_CombinePCCWithThermalSignal, align 4
  %44 = call i32 @set_hw_cap(%struct.pp_hwmgr* %37, i32 %42, i32 %43)
  ret i32 0
}

declare dso_local i32 @set_hw_cap(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
