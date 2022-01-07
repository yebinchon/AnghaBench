; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_power_profile_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_power_profile_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_get_pp_power_profile_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_get_pp_power_profile_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.drm_device* %11, %struct.drm_device** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %9, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %16 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @smu_get_power_profile_mode(i32* %20, i8* %21)
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @amdgpu_dpm_get_power_profile_mode(%struct.amdgpu_device* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %31, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_get_power_profile_mode(i32*, i8*) #1

declare dso_local i32 @amdgpu_dpm_get_power_profile_mode(%struct.amdgpu_device*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
