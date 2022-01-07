; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_thermal_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_thermal_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@THM = common dso_local global i32 0, align 4
@mmCG_MULT_THERMAL_STATUS = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK = common dso_local global i32 0, align 4
@CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega20_thermal_get_temperature(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %5 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %6 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %5, i32 0, i32 0
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @THM, align 4
  %9 = load i32, i32* @mmCG_MULT_THERMAL_STATUS, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 511
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
