; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumo_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %6)
  store %struct.sumo_power_info* %7, %struct.sumo_power_info** %3, align 8
  %8 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %8, i32 0, i32 3
  store %struct.radeon_ps* %9, %struct.radeon_ps** %4, align 8
  %10 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %11 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %10, i32 0, i32 2
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %13 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %20 = call i32 @sumo_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %17, %struct.radeon_ps* %18, %struct.radeon_ps* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %29 = call i32 @sumo_enable_boost(%struct.radeon_device* %27, %struct.radeon_ps* %28, i32 0)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %32 = call i32 @sumo_patch_boost_state(%struct.radeon_device* %30, %struct.radeon_ps* %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %35 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %41 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %42 = call i32 @sumo_pre_notify_alt_vddnb_change(%struct.radeon_device* %39, %struct.radeon_ps* %40, %struct.radeon_ps* %41)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = call i32 @sumo_enable_power_level_0(%struct.radeon_device* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @sumo_set_forced_level_0(%struct.radeon_device* %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = call i32 @sumo_wait_for_level_0(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %53 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %54 = call i32 @sumo_program_power_levels_0_to_n(%struct.radeon_device* %51, %struct.radeon_ps* %52, %struct.radeon_ps* %53)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %57 = call i32 @sumo_program_wl(%struct.radeon_device* %55, %struct.radeon_ps* %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %60 = call i32 @sumo_program_bsp(%struct.radeon_device* %58, %struct.radeon_ps* %59)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %63 = call i32 @sumo_program_at(%struct.radeon_device* %61, %struct.radeon_ps* %62)
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %66 = call i32 @sumo_force_nbp_state(%struct.radeon_device* %64, %struct.radeon_ps* %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = call i32 @sumo_set_forced_mode_disabled(%struct.radeon_device* %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = call i32 @sumo_set_forced_mode_enabled(%struct.radeon_device* %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = call i32 @sumo_set_forced_mode_disabled(%struct.radeon_device* %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %76 = call i32 @sumo_post_notify_alt_vddnb_change(%struct.radeon_device* %73, %struct.radeon_ps* %74, %struct.radeon_ps* %75)
  br label %77

77:                                               ; preds = %38, %33
  %78 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %79 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %85 = call i32 @sumo_enable_boost(%struct.radeon_device* %83, %struct.radeon_ps* %84, i32 1)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %88 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %94 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %95 = call i32 @sumo_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %92, %struct.radeon_ps* %93, %struct.radeon_ps* %94)
  br label %96

96:                                               ; preds = %91, %86
  ret i32 0
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @sumo_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_enable_boost(%struct.radeon_device*, %struct.radeon_ps*, i32) #1

declare dso_local i32 @sumo_patch_boost_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_pre_notify_alt_vddnb_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_enable_power_level_0(%struct.radeon_device*) #1

declare dso_local i32 @sumo_set_forced_level_0(%struct.radeon_device*) #1

declare dso_local i32 @sumo_set_forced_mode_enabled(%struct.radeon_device*) #1

declare dso_local i32 @sumo_wait_for_level_0(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_power_levels_0_to_n(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_program_wl(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_program_bsp(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_program_at(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_force_nbp_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_set_forced_mode_disabled(%struct.radeon_device*) #1

declare dso_local i32 @sumo_post_notify_alt_vddnb_change(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @sumo_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
