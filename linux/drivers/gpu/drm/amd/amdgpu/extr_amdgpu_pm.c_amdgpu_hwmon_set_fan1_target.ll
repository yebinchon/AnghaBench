; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_set_fan1_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_hwmon_set_fan1_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@AMD_FAN_CTRL_MANUAL = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@AMD_IS_PX = common dso_local global i32 0, align 4
@DRM_SWITCH_POWER_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_hwmon_set_fan1_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_hwmon_set_fan1_target(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %17 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = call i64 @smu_get_fan_control_mode(i32* %21)
  store i64 %22, i64* %13, align 8
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %25 = call i64 @amdgpu_dpm_get_fan_control_mode(%struct.amdgpu_device* %24)
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @AMD_FAN_CTRL_MANUAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODATA, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %93

33:                                               ; preds = %26
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AMD_IS_PX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DRM_SWITCH_POWER_ON, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %93

51:                                               ; preds = %40, %33
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @kstrtou32(i8* %52, i32 10, i64* %12)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %60 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 2
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @smu_set_fan_speed_rpm(i32* %64, i64 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %93

71:                                               ; preds = %62
  br label %90

72:                                               ; preds = %58
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @amdgpu_dpm_set_fan_speed_rpm(%struct.amdgpu_device* %81, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i64, i64* %9, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %86, %69, %56, %48, %30
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.amdgpu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i64 @smu_get_fan_control_mode(i32*) #1

declare dso_local i64 @amdgpu_dpm_get_fan_control_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i64*) #1

declare dso_local i32 @smu_set_fan_speed_rpm(i32*, i64) #1

declare dso_local i32 @amdgpu_dpm_set_fan_speed_rpm(%struct.amdgpu_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
