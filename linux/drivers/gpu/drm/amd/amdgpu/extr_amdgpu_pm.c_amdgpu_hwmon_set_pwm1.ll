; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_set_pwm1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_set_pwm1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AMD_FAN_CTRL_MANUAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"manual fan speed control should be enabled first\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_hwmon_set_pwm1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_hwmon_set_pwm1(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.amdgpu_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %10, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AMD_IS_PX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %97

33:                                               ; preds = %22, %4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %35 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 2
  %40 = call i64 @smu_get_fan_control_mode(i32* %39)
  store i64 %40, i64* %13, align 8
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %43 = call i64 @amdgpu_dpm_get_fan_control_mode(%struct.amdgpu_device* %42)
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @AMD_FAN_CTRL_MANUAL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @kstrtou32(i8* %53, i32 10, i64* %12)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %97

59:                                               ; preds = %52
  %60 = load i64, i64* %12, align 8
  %61 = mul nsw i64 %60, 100
  %62 = sdiv i64 %61, 255
  store i64 %62, i64* %12, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %64 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 2
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @smu_set_fan_speed_percent(i32* %68, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %97

75:                                               ; preds = %66
  br label %94

76:                                               ; preds = %59
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @amdgpu_dpm_set_fan_speed_percent(%struct.amdgpu_device* %85, i64 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %97

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %75
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %90, %73, %57, %48, %30
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.amdgpu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i64 @smu_get_fan_control_mode(i32*) #1

declare dso_local i64 @amdgpu_dpm_get_fan_control_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i64*) #1

declare dso_local i32 @smu_set_fan_speed_percent(i32*, i64) #1

declare dso_local i32 @amdgpu_dpm_set_fan_speed_percent(%struct.amdgpu_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
