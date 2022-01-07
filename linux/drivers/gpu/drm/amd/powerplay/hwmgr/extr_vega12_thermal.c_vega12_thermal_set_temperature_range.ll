; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_thermal.c_vega12_thermal_set_temperature_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_thermal.c_vega12_thermal_set_temperature_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.PP_TemperatureRange = type { i32, i32 }

@VEGA12_THERMAL_MINIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@VEGA12_THERMAL_MAXIMUM_ALERT_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmTHM_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@THM_THERMAL_INT_CTRL = common dso_local global i32 0, align 4
@MAX_IH_CREDIT = common dso_local global i32 0, align 4
@THERM_IH_HW_ENA = common dso_local global i32 0, align 4
@DIG_THERM_INTH = common dso_local global i32 0, align 4
@DIG_THERM_INTL = common dso_local global i32 0, align 4
@THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.PP_TemperatureRange*)* @vega12_thermal_set_temperature_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_thermal_set_temperature_range(%struct.pp_hwmgr* %0, %struct.PP_TemperatureRange* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.PP_TemperatureRange*, align 8
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.PP_TemperatureRange* %1, %struct.PP_TemperatureRange** %5, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* @VEGA12_THERMAL_MINIMUM_ALERT_TEMP, align 4
  %14 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @VEGA12_THERMAL_MAXIMUM_ALERT_TEMP, align 4
  %17 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %21 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %26 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %31 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.PP_TemperatureRange*, %struct.PP_TemperatureRange** %5, align 8
  %36 = getelementptr inbounds %struct.PP_TemperatureRange, %struct.PP_TemperatureRange* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %79

45:                                               ; preds = %38
  %46 = load i32, i32* @THM, align 4
  %47 = load i32, i32* @mmTHM_THERMAL_INT_CTRL, align 4
  %48 = call i32 @RREG32_SOC15(i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %51 = load i32, i32* @MAX_IH_CREDIT, align 4
  %52 = call i32 @REG_SET_FIELD(i32 %49, i32 %50, i32 %51, i32 5)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %55 = load i32, i32* @THERM_IH_HW_ENA, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %59 = load i32, i32* @DIG_THERM_INTH, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %62 = sdiv i32 %60, %61
  %63 = call i32 @REG_SET_FIELD(i32 %57, i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @THM_THERMAL_INT_CTRL, align 4
  %66 = load i32, i32* @DIG_THERM_INTL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %69 = sdiv i32 %67, %68
  %70 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @THM, align 4
  %76 = load i32, i32* @mmTHM_THERMAL_INT_CTRL, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @WREG32_SOC15(i32 %75, i32 0, i32 %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %45, %42
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
