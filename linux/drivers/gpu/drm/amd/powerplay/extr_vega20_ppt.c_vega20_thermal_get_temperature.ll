; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_thermal_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_thermal_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmCG_MULT_THERMAL_STATUS = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT = common dso_local global i32 0, align 4
@SMU_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid sensor for retrieving temp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32*)* @vega20_thermal_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_thermal_get_temperature(%struct.smu_context* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %13 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %22 = call i32 @vega20_get_metrics_table(%struct.smu_context* %21, %struct.TYPE_3__* %9)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %57 [
    i32 129, label %29
    i32 130, label %45
    i32 128, label %51
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @THM, align 4
  %31 = load i32, i32* @mmCG_MULT_THERMAL_STATUS, align 4
  %32 = call i32 @RREG32_SOC15(i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 511
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %61

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %61

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %61

57:                                               ; preds = %27
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %51, %45, %29
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57, %25, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @vega20_get_metrics_table(%struct.smu_context*, %struct.TYPE_3__*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
