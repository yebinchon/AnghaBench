; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_show_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amdgpu_device = type { i32, %struct.drm_device* }
%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32 }

@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PP_TEMP_MAX = common dso_local global i32 0, align 4
@AMDGPU_PP_SENSOR_HOTSPOT_TEMP = common dso_local global i32 0, align 4
@AMDGPU_PP_SENSOR_EDGE_TEMP = common dso_local global i32 0, align 4
@AMDGPU_PP_SENSOR_MEM_TEMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_hwmon_show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_hwmon_show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %19 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AMD_IS_PX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %29, %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PP_TEMP_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %82

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %77 [
    i32 129, label %47
    i32 130, label %57
    i32 128, label %67
  ]

47:                                               ; preds = %45
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %49 = load i32, i32* @AMDGPU_PP_SENSOR_HOTSPOT_TEMP, align 4
  %50 = bitcast i32* %12 to i8*
  %51 = call i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device* %48, i32 %49, i8* %50, i32* %13)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %47
  br label %77

57:                                               ; preds = %45
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %59 = load i32, i32* @AMDGPU_PP_SENSOR_EDGE_TEMP, align 4
  %60 = bitcast i32* %12 to i8*
  %61 = call i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device* %58, i32 %59, i8* %60, i32* %13)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %82

66:                                               ; preds = %57
  br label %77

67:                                               ; preds = %45
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %69 = load i32, i32* @AMDGPU_PP_SENSOR_MEM_TEMP, align 4
  %70 = bitcast i32* %12 to i8*
  %71 = call i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device* %68, i32 %69, i8* %70, i32* %13)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %82

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %45, %76, %66, %56
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @snprintf(i8* %78, i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %74, %64, %54, %42, %35
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.amdgpu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @amdgpu_dpm_read_sensor(%struct.amdgpu_device*, i32, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
