; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@THM = common dso_local global i32 0, align 4
@mmCG_FDO_CTRL2 = common dso_local global i32 0, align 4
@CG_FDO_CTRL2 = common dso_local global i32 0, align 4
@FDO_PWM_MODE = common dso_local global i32 0, align 4
@TMIN = common dso_local global i32 0, align 4
@CG_FDO_CTRL2__TMIN__SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_fan_ctrl_set_default_mode(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 3
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @THM, align 4
  %13 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %14 = load i32, i32* @THM, align 4
  %15 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %16 = call i32 @RREG32_SOC15(i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* @CG_FDO_CTRL2, align 4
  %18 = load i32, i32* @FDO_PWM_MODE, align 4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %18, i32 %21)
  %23 = call i32 @WREG32_SOC15(i32 %12, i32 0, i32 %13, i32 %22)
  %24 = load i32, i32* @THM, align 4
  %25 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %26 = load i32, i32* @THM, align 4
  %27 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %28 = call i32 @RREG32_SOC15(i32 %26, i32 0, i32 %27)
  %29 = load i32, i32* @CG_FDO_CTRL2, align 4
  %30 = load i32, i32* @TMIN, align 4
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CG_FDO_CTRL2__TMIN__SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @REG_SET_FIELD(i32 %28, i32 %29, i32 %30, i32 %35)
  %37 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 %36)
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
