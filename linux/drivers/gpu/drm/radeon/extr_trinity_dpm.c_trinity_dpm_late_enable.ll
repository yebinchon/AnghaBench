; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_late_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_late_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@R600_TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@R600_TEMP_RANGE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trinity_dpm_late_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @trinity_acquire_mutex(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @trinity_enable_clock_power_gating(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @r600_is_internal_thermal_sensor(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load i32, i32* @R600_TEMP_RANGE_MIN, align 4
  %24 = load i32, i32* @R600_TEMP_RANGE_MAX, align 4
  %25 = call i32 @trinity_set_thermal_temperature_range(%struct.radeon_device* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @trinity_release_mutex(%struct.radeon_device* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @radeon_irq_set(%struct.radeon_device* %36)
  br label %38

38:                                               ; preds = %32, %14, %1
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = call i32 @trinity_release_mutex(%struct.radeon_device* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @trinity_acquire_mutex(%struct.radeon_device*) #1

declare dso_local i32 @trinity_enable_clock_power_gating(%struct.radeon_device*) #1

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @trinity_set_thermal_temperature_range(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @trinity_release_mutex(%struct.radeon_device*) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
