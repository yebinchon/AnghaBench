; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_mclk_od.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_set_pp_mclk_od.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@SMU_OD_MCLK = common dso_local global i32 0, align 4
@AMD_PP_TASK_READJUST_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @amdgpu_set_pp_mclk_od to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amdgpu_set_pp_mclk_od(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.drm_device* %14, %struct.drm_device** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 0, i64* %12)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %8, align 8
  br label %75

25:                                               ; preds = %4
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %27 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 2
  %32 = load i32, i32* @SMU_OD_MCLK, align 4
  %33 = load i64, i64* %12, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @smu_set_od_percentage(i32* %31, i32 %32, i32 %34)
  store i64 %35, i64* %12, align 8
  br label %74

36:                                               ; preds = %25
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @amdgpu_dpm_set_mclk_od(%struct.amdgpu_device* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %59 = load i32, i32* @AMD_PP_TASK_READJUST_POWER_STATE, align 4
  %60 = call i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device* %58, i32 %59, i32* null)
  br label %73

61:                                               ; preds = %49
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %72 = call i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device* %71)
  br label %73

73:                                               ; preds = %61, %57
  br label %74

74:                                               ; preds = %73, %29
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i64 @smu_set_od_percentage(i32*, i32, i32) #1

declare dso_local i32 @amdgpu_dpm_set_mclk_od(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_dpm_dispatch_task(%struct.amdgpu_device*, i32, i32*) #1

declare dso_local i32 @amdgpu_pm_compute_clocks(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
