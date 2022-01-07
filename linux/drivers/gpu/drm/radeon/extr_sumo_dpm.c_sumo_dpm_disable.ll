; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.sumo_power_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumo_dpm_disable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.sumo_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %4)
  store %struct.sumo_power_info* %5, %struct.sumo_power_info** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @sumo_dpm_enabled(%struct.radeon_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @sumo_disable_clock_power_gating(%struct.radeon_device* %11)
  %13 = load %struct.sumo_power_info*, %struct.sumo_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @sumo_enable_sclk_ds(%struct.radeon_device* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = call i32 @sumo_clear_vc(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = call i32 @sumo_wait_for_level_0(%struct.radeon_device* %23)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i32 @sumo_stop_dpm(%struct.radeon_device* %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @sumo_enable_voltage_scaling(%struct.radeon_device* %27, i32 0)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @r600_is_internal_thermal_sensor(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @radeon_irq_set(%struct.radeon_device* %45)
  br label %47

47:                                               ; preds = %41, %34, %20
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sumo_update_current_ps(%struct.radeon_device* %48, i32 %53)
  br label %55

55:                                               ; preds = %47, %9
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @sumo_dpm_enabled(%struct.radeon_device*) #1

declare dso_local i32 @sumo_disable_clock_power_gating(%struct.radeon_device*) #1

declare dso_local i32 @sumo_enable_sclk_ds(%struct.radeon_device*, i32) #1

declare dso_local i32 @sumo_clear_vc(%struct.radeon_device*) #1

declare dso_local i32 @sumo_wait_for_level_0(%struct.radeon_device*) #1

declare dso_local i32 @sumo_stop_dpm(%struct.radeon_device*) #1

declare dso_local i32 @sumo_enable_voltage_scaling(%struct.radeon_device*, i32) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @sumo_update_current_ps(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
