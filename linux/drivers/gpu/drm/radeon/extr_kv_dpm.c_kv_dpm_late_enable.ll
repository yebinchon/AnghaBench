; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_late_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_late_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@R600_TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@R600_TEMP_RANGE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"kv_set_thermal_temperature_range failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_dpm_late_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @r600_is_internal_thermal_sensor(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = load i32, i32* @R600_TEMP_RANGE_MIN, align 4
  %20 = load i32, i32* @R600_TEMP_RANGE_MAX, align 4
  %21 = call i32 @kv_set_thermal_temperature_range(%struct.radeon_device* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @kv_enable_thermal_int(%struct.radeon_device* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %10, %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @kv_dpm_powergate_acp(%struct.radeon_device* %31, i32 1)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @kv_dpm_powergate_samu(%struct.radeon_device* %33, i32 1)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = call i32 @kv_dpm_powergate_vce(%struct.radeon_device* %35, i32 1)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = call i32 @kv_dpm_powergate_uvd(%struct.radeon_device* %37, i32 1)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @kv_set_thermal_temperature_range(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @kv_enable_thermal_int(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_acp(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_samu(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_vce(%struct.radeon_device*, i32) #1

declare dso_local i32 @kv_dpm_powergate_uvd(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
