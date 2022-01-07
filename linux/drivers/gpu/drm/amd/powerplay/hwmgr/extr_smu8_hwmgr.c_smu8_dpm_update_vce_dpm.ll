; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_update_vce_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_update_vce_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_4__, %struct.smu8_hwmgr* }
%struct.TYPE_4__ = type { %struct.phm_vce_clock_voltage_dependency_table* }
%struct.phm_vce_clock_voltage_dependency_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.smu8_hwmgr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@PPSMC_MSG_SetEclkHardMin = common dso_local global i32 0, align 4
@PPSMC_MSG_SetEclkSoftMin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu8_dpm_update_vce_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_dpm_update_vce_dpm(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu8_hwmgr*, align 8
  %4 = alloca %struct.phm_vce_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 2
  %7 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %6, align 8
  store %struct.smu8_hwmgr* %7, %struct.smu8_hwmgr** %3, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %10, align 8
  store %struct.phm_vce_clock_voltage_dependency_table* %11, %struct.phm_vce_clock_voltage_dependency_table** %4, align 8
  %12 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %13 = call i64 @PP_CAP(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %15, %1
  %21 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %4, align 8
  %22 = getelementptr inbounds %struct.phm_vce_clock_voltage_dependency_table, %struct.phm_vce_clock_voltage_dependency_table* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load %struct.phm_vce_clock_voltage_dependency_table*, %struct.phm_vce_clock_voltage_dependency_table** %4, align 8
  %25 = getelementptr inbounds %struct.phm_vce_clock_voltage_dependency_table, %struct.phm_vce_clock_voltage_dependency_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %33 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = load i32, i32* @PPSMC_MSG_SetEclkHardMin, align 4
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PPSMC_MSG_SetEclkHardMin, align 4
  %43 = call i32 @smu8_get_eclk_level(%struct.pp_hwmgr* %37, i32 %41, i32 %42)
  %44 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %35, i32 %36, i32 %43)
  br label %52

45:                                               ; preds = %15
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %47 = load i32, i32* @PPSMC_MSG_SetEclkHardMin, align 4
  %48 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %46, i32 %47, i32 0)
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %50 = load i32, i32* @PPSMC_MSG_SetEclkSoftMin, align 4
  %51 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %49, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %45, %20
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_get_eclk_level(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
