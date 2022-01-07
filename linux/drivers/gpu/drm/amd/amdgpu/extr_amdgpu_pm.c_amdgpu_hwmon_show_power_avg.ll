; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_show_power_avg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_show_power_avg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amdgpu_device = type { i32, %struct.drm_device* }
%struct.drm_device = type { i64 }

@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_PP_SENSOR_GPU_POWER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_hwmon_show_power_avg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_hwmon_show_power_avg(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.amdgpu_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %8, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 4, i32* %12, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AMD_IS_PX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %25, %3
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %36 = load i32, i32* @AMDGPU_PP_SENSOR_GPU_POWER, align 4
  %37 = bitcast i32* %10 to i8*
  %38 = call i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device* %35, i32 %36, i8* %37, i32* %12)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 8
  %46 = mul nsw i32 %45, 1000000
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, 255
  %49 = mul nsw i32 %48, 1000
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %43, %41, %31
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.amdgpu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device*, i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
