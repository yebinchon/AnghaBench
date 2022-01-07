; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_od_clk_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pm.c_amdgpu_get_pp_od_clk_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SMU_OD_SCLK = common dso_local global i32 0, align 4
@SMU_OD_MCLK = common dso_local global i32 0, align 4
@SMU_OD_VDDC_CURVE = common dso_local global i32 0, align 4
@SMU_OD_RANGE = common dso_local global i32 0, align 4
@OD_SCLK = common dso_local global i32 0, align 4
@OD_MCLK = common dso_local global i32 0, align 4
@OD_VDDC_CURVE = common dso_local global i32 0, align 4
@OD_RANGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @amdgpu_get_pp_od_clk_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_get_pp_od_clk_voltage(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.drm_device* %12, %struct.drm_device** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %17 = call i64 @is_support_sw_smu(%struct.amdgpu_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %3
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = load i32, i32* @SMU_OD_SCLK, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @smu_print_clk_levels(i32* %21, i32 %22, i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = load i32, i32* @SMU_OD_MCLK, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @smu_print_clk_levels(i32* %26, i32 %27, i8* %31)
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = load i32, i32* @SMU_OD_VDDC_CURVE, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i32 @smu_print_clk_levels(i32* %36, i32 %37, i8* %41)
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = load i32, i32* @SMU_OD_RANGE, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 @smu_print_clk_levels(i32* %46, i32 %47, i8* %51)
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %101

56:                                               ; preds = %3
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %66 = load i32, i32* @OD_SCLK, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device* %65, i32 %66, i8* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %70 = load i32, i32* @OD_MCLK, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device* %69, i32 %70, i8* %74)
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %79 = load i32, i32* @OD_VDDC_CURVE, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device* %78, i32 %79, i8* %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %88 = load i32, i32* @OD_RANGE, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 @amdgpu_dpm_print_clock_levels(%struct.amdgpu_device* %87, i32 %88, i8* %92)
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %56
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = call i32 @snprintf(i8* %98, i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %64, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

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
