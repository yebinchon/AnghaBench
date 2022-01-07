; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_check_states_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_hardwaremanager.c_phm_check_states_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pp_hw_power_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_check_states_equal(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.pp_hw_power_state*, align 8
  %8 = alloca %struct.pp_hw_power_state*, align 8
  %9 = alloca i32*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %7, align 8
  store %struct.pp_hw_power_state* %2, %struct.pp_hw_power_state** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %11 = call i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr* %10)
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)**
  %17 = load i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)*, i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)** %16, align 8
  %18 = icmp eq i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)**
  %28 = load i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)*, i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)** %27, align 8
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %7, align 8
  %31 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 %28(%struct.pp_hwmgr* %29, %struct.pp_hw_power_state* %30, %struct.pp_hw_power_state* %31, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @PHM_FUNC_CHECK(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
