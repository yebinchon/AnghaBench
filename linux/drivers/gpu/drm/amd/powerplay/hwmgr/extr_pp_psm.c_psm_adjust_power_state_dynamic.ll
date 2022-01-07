; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_adjust_power_state_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_psm.c_psm_adjust_power_state_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64, i64*, i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.pp_hwmgr*, i64*, i32)* }
%struct.pp_power_state = type { i32 }

@AMD_DPM_FORCED_LEVEL_MANUAL = common dso_local global i64 0, align 8
@Workload_Policy_Max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psm_adjust_power_state_dynamic(%struct.pp_hwmgr* %0, i32 %1, %struct.pp_power_state* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_power_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pp_power_state* %2, %struct.pp_power_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = call i32 @phm_display_configuration_changed(%struct.pp_hwmgr* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %21 = load %struct.pp_power_state*, %struct.pp_power_state** %6, align 8
  %22 = call i32 @power_state_management(%struct.pp_hwmgr* %20, %struct.pp_power_state* %21)
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = call i32 @phm_apply_clock_adjust_rules(%struct.pp_hwmgr* %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %31 = call i32 @phm_notify_smc_display_config_after_ps_adjustment(%struct.pp_hwmgr* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %34 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %35 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @phm_force_dpm_levels(%struct.pp_hwmgr* %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AMD_DPM_FORCED_LEVEL_MANUAL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fls(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @Workload_Policy_Max, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  br label %66

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  store i32 %67, i32* %7, align 4
  %68 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %69 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  %75 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %76 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %66
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32 (%struct.pp_hwmgr*, i64*, i32)*, i32 (%struct.pp_hwmgr*, i64*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.pp_hwmgr*, i64*, i32)* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %89 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %88, i32 0, i32 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.pp_hwmgr*, i64*, i32)*, i32 (%struct.pp_hwmgr*, i64*, i32)** %91, align 8
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %94 = call i32 %92(%struct.pp_hwmgr* %93, i64* %8, i32 0)
  br label %95

95:                                               ; preds = %87, %80, %66
  br label %96

96:                                               ; preds = %95, %45
  ret i32 0
}

declare dso_local i32 @phm_display_configuration_changed(%struct.pp_hwmgr*) #1

declare dso_local i32 @power_state_management(%struct.pp_hwmgr*, %struct.pp_power_state*) #1

declare dso_local i32 @phm_apply_clock_adjust_rules(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_notify_smc_display_config_after_ps_adjustment(%struct.pp_hwmgr*) #1

declare dso_local i32 @phm_force_dpm_levels(%struct.pp_hwmgr*, i64) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
