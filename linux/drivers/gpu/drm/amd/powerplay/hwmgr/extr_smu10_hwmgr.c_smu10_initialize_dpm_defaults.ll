; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_initialize_dpm_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_initialize_dpm_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.smu10_hwmgr = type { i32, i32, i32, i32, i64, i64, i64 }

@PHM_PlatformCaps_SclkDeepSleep = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SclkThrottleLowNotification = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PowerPlaySupport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_initialize_dpm_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_initialize_dpm_defaults(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %7, %struct.smu10_hwmgr** %3, align 8
  %8 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %8, i32 0, i32 0
  store i32 30000, i32* %9, align 8
  %10 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PHM_PlatformCaps_SclkDeepSleep, align 4
  %27 = call i32 @phm_cap_unset(i32 %25, i32 %26)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PHM_PlatformCaps_SclkThrottleLowNotification, align 4
  %33 = call i32 @phm_cap_unset(i32 %31, i32 %32)
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PHM_PlatformCaps_PowerPlaySupport, align 4
  %39 = call i32 @phm_cap_set(i32 %37, i32 %38)
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
