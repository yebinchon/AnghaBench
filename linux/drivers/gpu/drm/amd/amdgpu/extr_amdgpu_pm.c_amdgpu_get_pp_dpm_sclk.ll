; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_dpm_sclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_dpm_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.amdgpu_device*, i32, i8*)* }

@PP_SCLK = common dso_local global i32 0, align 4
@SMU_SCLK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_get_pp_dpm_sclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_get_pp_dpm_sclk(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  %16 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %20 = call i64 @amdgim_is_hwperf(%struct.amdgpu_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.amdgpu_device*, i32, i8*)*, i32 (%struct.amdgpu_device*, i32, i8*)** %27, align 8
  %29 = icmp ne i32 (%struct.amdgpu_device*, i32, i8*)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (%struct.amdgpu_device*, i32, i8*)*, i32 (%struct.amdgpu_device*, i32, i8*)** %35, align 8
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %38 = load i32, i32* @PP_SCLK, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 %36(%struct.amdgpu_device* %37, i32 %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %68

41:                                               ; preds = %22, %18, %3
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %43 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = load i32, i32* @SMU_SCLK, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @smu_print_clk_levels(i32* %47, i32 %48, i8* %49)
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %41
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %61 = load i32, i32* @PP_SCLK, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device* %60, i32 %61, i8* %62)
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = call i32 @snprintf(i8* %65, i32 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %59, %45, %30
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgim_is_hwperf(%struct.amdgpu_device*) #1

declare dso_local i64 @is_support_sw_smu(%struct.amdgpu_device*) #1

declare dso_local i32 @smu_print_clk_levels(i32*, i32, i8*) #1

declare dso_local i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
