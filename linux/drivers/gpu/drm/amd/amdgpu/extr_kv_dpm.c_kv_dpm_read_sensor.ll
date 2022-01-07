; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.kv_power_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ixTARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK = common dso_local global i64 0, align 8
@TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SMU__NUM_SCLK_DPM_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*)* @kv_dpm_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_read_sensor(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.kv_power_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %10, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %17 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %16)
  store %struct.kv_power_info* %17, %struct.kv_power_info** %11, align 8
  %18 = load i32, i32* @ixTARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %19 = call i64 @RREG32_SMC(i32 %18)
  %20 = load i64, i64* @TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @TARGET_AND_CURRENT_PROFILE_INDEX__CURR_SCLK_INDEX__SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %61

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %58 [
    i32 129, label %32
    i32 128, label %52
  ]

32:                                               ; preds = %30
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @SMU__NUM_SCLK_DPM_STATE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %11, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to i32*
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 4, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %61

49:                                               ; preds = %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %30
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %54 = call i32 @kv_dpm_get_temp(%struct.amdgpu_device* %53)
  %55 = load i8*, i8** %8, align 8
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 4, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %61

58:                                               ; preds = %30
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %52, %49, %36, %27
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i64 @RREG32_SMC(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kv_dpm_get_temp(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
