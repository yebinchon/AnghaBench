; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_thermal_start_thermal_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_thermal_start_thermal_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@R600_TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@R600_TEMP_RANGE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_thermal_start_thermal_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_thermal_start_thermal_controller(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i32 @si_thermal_initialize(%struct.amdgpu_device* %5)
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = load i32, i32* @R600_TEMP_RANGE_MIN, align 4
  %9 = load i32, i32* @R600_TEMP_RANGE_MAX, align 4
  %10 = call i32 @si_thermal_set_temperature_range(%struct.amdgpu_device* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @si_thermal_enable_alert(%struct.amdgpu_device* %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %15
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %22
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call i32 @si_halt_smc(%struct.amdgpu_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %30
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = call i32 @si_thermal_setup_fan_table(%struct.amdgpu_device* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %37
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @si_resume_smc(%struct.amdgpu_device* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %44
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = call i32 @si_thermal_start_smc_fan_control(%struct.amdgpu_device* %52)
  br label %54

54:                                               ; preds = %51, %22
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49, %42, %35, %20, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @si_thermal_initialize(%struct.amdgpu_device*) #1

declare dso_local i32 @si_thermal_set_temperature_range(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @si_thermal_enable_alert(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @si_halt_smc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_thermal_setup_fan_table(%struct.amdgpu_device*) #1

declare dso_local i32 @si_resume_smc(%struct.amdgpu_device*) #1

declare dso_local i32 @si_thermal_start_smc_fan_control(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
