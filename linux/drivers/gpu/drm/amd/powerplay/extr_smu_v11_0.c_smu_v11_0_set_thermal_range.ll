; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_thermal_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_thermal_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.smu_temperature_range = type { i32, i32 }

@SMU_THERMAL_MINIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@SMU_THERMAL_MAXIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@SMU_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmTHM_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@THM_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@MAX_IH_CREDIT = common dso_local global i32 0, align 4
@THERM_IH_HW_ENA = common dso_local global i32 0, align 4
@THERM_INTH_MASK = common dso_local global i32 0, align 4
@THERM_INTL_MASK = common dso_local global i32 0, align 4
@DIG_THERM_INTH = common dso_local global i32 0, align 4
@DIG_THERM_INTL = common dso_local global i32 0, align 4
@THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64)* @smu_v11_0_set_thermal_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_thermal_range(%struct.smu_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_temperature_range, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.smu_temperature_range* %4 to i64*
  store i64 %1, i64* %10, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %6, align 8
  %14 = load i32, i32* @SMU_THERMAL_MINIMUM_ALERT_TEMP, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @SMU_THERMAL_MAXIMUM_ALERT_TEMP, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SMU_THERMAL_MINIMUM_ALERT_TEMP, align 4
  %17 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %20 = sdiv i32 %18, %19
  %21 = call i32 @max(i32 %16, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @SMU_THERMAL_MAXIMUM_ALERT_TEMP, align 4
  %23 = getelementptr inbounds %struct.smu_temperature_range, %struct.smu_temperature_range* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMU_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @min(i32 %22, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %2
  %35 = load i32, i32* @THM, align 4
  %36 = load i32, i32* @mmTHM_THERMAL_INT_CTRL, align 4
  %37 = call i32 @RREG32_SOC15(i32 %35, i32 0, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %40 = load i32, i32* @MAX_IH_CREDIT, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40, i32 5)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %44 = load i32, i32* @THERM_IH_HW_ENA, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %48 = load i32, i32* @THERM_INTH_MASK, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %52 = load i32, i32* @THERM_INTL_MASK, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %56 = load i32, i32* @DIG_THERM_INTH, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %62 = load i32, i32* @DIG_THERM_INTL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 255
  %65 = call i32 @REG_SET_FIELD(i32 %60, i32 %61, i32 %62, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @THM, align 4
  %71 = load i32, i32* @mmTHM_THERMAL_INT_CTRL, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @WREG32_SOC15(i32 %70, i32 0, i32 %71, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %34, %31
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
