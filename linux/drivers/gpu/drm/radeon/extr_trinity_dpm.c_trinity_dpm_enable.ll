; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.trinity_power_info = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trinity_dpm_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.trinity_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %5)
  store %struct.trinity_power_info* %6, %struct.trinity_power_info** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @trinity_acquire_mutex(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i64 @trinity_dpm_enabled(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call i32 @trinity_release_mutex(%struct.radeon_device* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @trinity_program_bootup_state(%struct.radeon_device* %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @sumo_program_vc(%struct.radeon_device* %20, i32 12582963)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @trinity_start_am(%struct.radeon_device* %22)
  %24 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %25 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @trinity_program_ttt(%struct.radeon_device* %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @trinity_enable_att(%struct.radeon_device* %31)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @trinity_program_sclk_dpm(%struct.radeon_device* %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @trinity_start_dpm(%struct.radeon_device* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @trinity_wait_for_dpm_enabled(%struct.radeon_device* %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = call i32 @trinity_dpm_bapm_enable(%struct.radeon_device* %40, i32 0)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = call i32 @trinity_release_mutex(%struct.radeon_device* %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trinity_update_current_ps(%struct.radeon_device* %44, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %33, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_acquire_mutex(%struct.radeon_device*) #1

declare dso_local i64 @trinity_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @trinity_release_mutex(%struct.radeon_device*) #1

declare dso_local i32 @trinity_program_bootup_state(%struct.radeon_device*) #1

declare dso_local i32 @sumo_program_vc(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_start_am(%struct.radeon_device*) #1

declare dso_local i32 @trinity_program_ttt(%struct.radeon_device*) #1

declare dso_local i32 @trinity_enable_att(%struct.radeon_device*) #1

declare dso_local i32 @trinity_program_sclk_dpm(%struct.radeon_device*) #1

declare dso_local i32 @trinity_start_dpm(%struct.radeon_device*) #1

declare dso_local i32 @trinity_wait_for_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @trinity_dpm_bapm_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_update_current_ps(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
