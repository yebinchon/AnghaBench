; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_power_state_management.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_power_state_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.pp_power_state*, %struct.pp_power_state* }
%struct.pp_power_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, %struct.pp_power_state*)* @power_state_management to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_state_management(%struct.pp_hwmgr* %0, %struct.pp_power_state* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_power_state*, align 8
  %5 = alloca %struct.pp_power_state*, align 8
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.pp_power_state* %1, %struct.pp_power_state** %4, align 8
  %8 = load %struct.pp_power_state*, %struct.pp_power_state** %4, align 8
  %9 = icmp ne %struct.pp_power_state* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.pp_power_state*, %struct.pp_power_state** %4, align 8
  store %struct.pp_power_state* %11, %struct.pp_power_state** %6, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.pp_power_state*, %struct.pp_power_state** %14, align 8
  store %struct.pp_power_state* %15, %struct.pp_power_state** %6, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 2
  %19 = load %struct.pp_power_state*, %struct.pp_power_state** %18, align 8
  store %struct.pp_power_state* %19, %struct.pp_power_state** %5, align 8
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %22 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %23 = call i32 @phm_apply_state_adjust_rules(%struct.pp_hwmgr* %20, %struct.pp_power_state* %21, %struct.pp_power_state* %22)
  %24 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %25 = icmp eq %struct.pp_power_state* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %29 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %28, i32 0, i32 0
  %30 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %31 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %30, i32 0, i32 0
  %32 = call i64 @phm_check_states_equal(%struct.pp_hwmgr* %27, i32* %29, i32* %31, i32* %7)
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %16
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = call i64 @phm_check_smc_update_required_for_display_configuration(%struct.pp_hwmgr* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38, %35
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %44 = load %struct.pp_power_state*, %struct.pp_power_state** %5, align 8
  %45 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %44, i32 0, i32 0
  %46 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %47 = getelementptr inbounds %struct.pp_power_state, %struct.pp_power_state* %46, i32 0, i32 0
  %48 = call i32 @phm_set_power_state(%struct.pp_hwmgr* %43, i32* %45, i32* %47)
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %49, i32 0, i32 2
  %51 = load %struct.pp_power_state*, %struct.pp_power_state** %50, align 8
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 1
  %54 = load %struct.pp_power_state*, %struct.pp_power_state** %53, align 8
  %55 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %56 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(%struct.pp_power_state* %51, %struct.pp_power_state* %54, i32 %57)
  br label %59

59:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @phm_apply_state_adjust_rules(%struct.pp_hwmgr*, %struct.pp_power_state*, %struct.pp_power_state*) #1

declare dso_local i64 @phm_check_states_equal(%struct.pp_hwmgr*, i32*, i32*, i32*) #1

declare dso_local i64 @phm_check_smc_update_required_for_display_configuration(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_set_power_state(%struct.pp_hwmgr*, i32*, i32*) #1

declare dso_local i32 @memcpy(%struct.pp_power_state*, %struct.pp_power_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
