; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.trinity_power_info = type { i64, i64, %struct.radeon_ps, %struct.radeon_ps }
%struct.radeon_ps = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trinity_dpm_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.trinity_power_info*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %6)
  store %struct.trinity_power_info* %7, %struct.trinity_power_info** %3, align 8
  %8 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %9 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %8, i32 0, i32 3
  store %struct.radeon_ps* %9, %struct.radeon_ps** %4, align 8
  %10 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %11 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %10, i32 0, i32 2
  store %struct.radeon_ps* %11, %struct.radeon_ps** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = call i32 @trinity_acquire_mutex(%struct.radeon_device* %12)
  %14 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @trinity_dpm_bapm_enable(%struct.radeon_device* %24, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %34 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %35 = call i32 @trinity_set_uvd_clock_before_set_eng_clock(%struct.radeon_device* %32, %struct.radeon_ps* %33, %struct.radeon_ps* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i32 @trinity_enable_power_level_0(%struct.radeon_device* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = call i32 @trinity_force_level_0(%struct.radeon_device* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = call i32 @trinity_wait_for_level_0(%struct.radeon_device* %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %44 = call i32 @trinity_setup_nbp_sim(%struct.radeon_device* %42, %struct.radeon_ps* %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %47 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %48 = call i32 @trinity_program_power_levels_0_to_n(%struct.radeon_device* %45, %struct.radeon_ps* %46, %struct.radeon_ps* %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = call i32 @trinity_force_level_0(%struct.radeon_device* %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = call i32 @trinity_unforce_levels(%struct.radeon_device* %51)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %55 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %56 = call i32 @trinity_set_uvd_clock_after_set_eng_clock(%struct.radeon_device* %53, %struct.radeon_ps* %54, %struct.radeon_ps* %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %60 = call i32 @trinity_set_vce_clock(%struct.radeon_device* %57, %struct.radeon_ps* %58, %struct.radeon_ps* %59)
  br label %61

61:                                               ; preds = %31, %1
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = call i32 @trinity_release_mutex(%struct.radeon_device* %62)
  ret i32 0
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_acquire_mutex(%struct.radeon_device*) #1

declare dso_local i32 @trinity_dpm_bapm_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_set_uvd_clock_before_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @trinity_enable_power_level_0(%struct.radeon_device*) #1

declare dso_local i32 @trinity_force_level_0(%struct.radeon_device*) #1

declare dso_local i32 @trinity_wait_for_level_0(%struct.radeon_device*) #1

declare dso_local i32 @trinity_setup_nbp_sim(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @trinity_program_power_levels_0_to_n(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @trinity_unforce_levels(%struct.radeon_device*) #1

declare dso_local i32 @trinity_set_uvd_clock_after_set_eng_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @trinity_set_vce_clock(%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*) #1

declare dso_local i32 @trinity_release_mutex(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
