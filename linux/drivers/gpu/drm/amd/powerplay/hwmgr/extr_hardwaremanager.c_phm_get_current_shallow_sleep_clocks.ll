; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_get_current_shallow_sleep_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_get_current_shallow_sleep_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pp_hw_power_state = type { i32 }
%struct.pp_clock_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_get_current_shallow_sleep_clocks(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, %struct.pp_clock_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.pp_hw_power_state*, align 8
  %7 = alloca %struct.pp_clock_info*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %6, align 8
  store %struct.pp_clock_info* %2, %struct.pp_clock_info** %7, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %9 = call i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr* %8)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)**
  %15 = load i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)*, i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)** %14, align 8
  %16 = icmp eq i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)**
  %26 = load i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)*, i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_clock_info*)** %25, align 8
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %28 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %6, align 8
  %29 = load %struct.pp_clock_info*, %struct.pp_clock_info** %7, align 8
  %30 = call i32 %26(%struct.pp_hwmgr* %27, %struct.pp_hw_power_state* %28, %struct.pp_clock_info* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
