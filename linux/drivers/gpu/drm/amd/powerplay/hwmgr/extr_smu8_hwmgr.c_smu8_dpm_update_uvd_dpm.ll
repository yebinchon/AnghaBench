; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_update_uvd_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_dpm_update_uvd_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_5__, %struct.smu8_hwmgr* }
%struct.TYPE_5__ = type { %struct.phm_uvd_clock_voltage_dependency_table* }
%struct.phm_uvd_clock_voltage_dependency_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.smu8_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PHM_PlatformCaps_StablePState = common dso_local global i32 0, align 4
@PPSMC_MSG_SetUvdHardMin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu8_dpm_update_uvd_dpm(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu8_hwmgr*, align 8
  %6 = alloca %struct.phm_uvd_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 2
  %9 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %8, align 8
  store %struct.smu8_hwmgr* %9, %struct.smu8_hwmgr** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %12, align 8
  store %struct.phm_uvd_clock_voltage_dependency_table* %13, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @PHM_PlatformCaps_StablePState, align 4
  %18 = call i64 @PP_CAP(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20, %16
  %26 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %27 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.phm_uvd_clock_voltage_dependency_table*, %struct.phm_uvd_clock_voltage_dependency_table** %6, align 8
  %30 = getelementptr inbounds %struct.phm_uvd_clock_voltage_dependency_table, %struct.phm_uvd_clock_voltage_dependency_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %5, align 8
  %38 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %41 = load i32, i32* @PPSMC_MSG_SetUvdHardMin, align 4
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = load %struct.smu8_hwmgr*, %struct.smu8_hwmgr** %5, align 8
  %44 = getelementptr inbounds %struct.smu8_hwmgr, %struct.smu8_hwmgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PPSMC_MSG_SetUvdHardMin, align 4
  %48 = call i32 @smu8_get_uvd_level(%struct.pp_hwmgr* %42, i32 %46, i32 %47)
  %49 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %40, i32 %41, i32 %48)
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %51 = call i32 @smu8_enable_disable_uvd_dpm(%struct.pp_hwmgr* %50, i32 1)
  br label %55

52:                                               ; preds = %20
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %54 = call i32 @smu8_enable_disable_uvd_dpm(%struct.pp_hwmgr* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %25
  br label %59

56:                                               ; preds = %2
  %57 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %58 = call i32 @smu8_enable_disable_uvd_dpm(%struct.pp_hwmgr* %57, i32 0)
  br label %59

59:                                               ; preds = %56, %55
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_get_uvd_level(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @smu8_enable_disable_uvd_dpm(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
