; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_start_smc_fan_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_thermal.c_smu7_fan_ctrl_start_smc_fan_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)* }

@PHM_PlatformCaps_ODFuzzyFanControlSupport = common dso_local global i32 0, align 4
@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@FAN_CONTROL_FUZZY = common dso_local global i32 0, align 4
@PPSMC_StartFanControl = common dso_local global i32 0, align 4
@PHM_PlatformCaps_FanSpeedInTableIsRPM = common dso_local global i32 0, align 4
@FAN_CONTROL_TABLE = common dso_local global i32 0, align 4
@PPSMC_MSG_SetFanTemperatureTarget = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_fan_ctrl_start_smc_fan_control(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load i32, i32* @PHM_PlatformCaps_ODFuzzyFanControlSupport, align 4
  %5 = call i64 @PP_CAP(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %12 = load i32, i32* @FAN_CONTROL_FUZZY, align 4
  %13 = call i32 @cgs_write_register(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = load i32, i32* @PPSMC_StartFanControl, align 4
  %16 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @PHM_PlatformCaps_FanSpeedInTableIsRPM, align 4
  %18 = call i64 @PP_CAP(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %7
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %24, align 8
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(%struct.pp_hwmgr* %26, i32 %31)
  br label %46

33:                                               ; preds = %7
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.pp_hwmgr*, i32)*, i32 (%struct.pp_hwmgr*, i32)** %37, align 8
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %38(%struct.pp_hwmgr* %39, i32 %44)
  br label %46

46:                                               ; preds = %33, %20
  br label %57

47:                                               ; preds = %1
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %52 = load i32, i32* @FAN_CONTROL_TABLE, align 4
  %53 = call i32 @cgs_write_register(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %55 = load i32, i32* @PPSMC_StartFanControl, align 4
  %56 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %46
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %69 = load i32, i32* @PPSMC_MSG_SetFanTemperatureTarget, align 4
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %68, i32 %69, i64 %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %60, %57
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
