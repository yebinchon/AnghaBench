; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_static_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_static_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i8*, i8*, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@THM = common dso_local global i32 0, align 4
@mmCG_FDO_CTRL2 = common dso_local global i32 0, align 4
@CG_FDO_CTRL2 = common dso_local global i32 0, align 4
@FDO_PWM_MODE = common dso_local global i32 0, align 4
@TMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 3
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @THM, align 4
  %15 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %16 = call i32 @RREG32_SOC15(i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* @CG_FDO_CTRL2, align 4
  %18 = load i32, i32* @FDO_PWM_MODE, align 4
  %19 = call i8* @REG_GET_FIELD(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @THM, align 4
  %23 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %24 = call i32 @RREG32_SOC15(i32 %22, i32 0, i32 %23)
  %25 = load i32, i32* @CG_FDO_CTRL2, align 4
  %26 = load i32, i32* @TMIN, align 4
  %27 = call i8* @REG_GET_FIELD(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %13, %2
  %33 = load i32, i32* @THM, align 4
  %34 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %35 = load i32, i32* @THM, align 4
  %36 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %37 = call i32 @RREG32_SOC15(i32 %35, i32 0, i32 %36)
  %38 = load i32, i32* @CG_FDO_CTRL2, align 4
  %39 = load i32, i32* @TMIN, align 4
  %40 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = call i32 @WREG32_SOC15(i32 %33, i32 0, i32 %34, i32 %40)
  %42 = load i32, i32* @THM, align 4
  %43 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %44 = load i32, i32* @THM, align 4
  %45 = load i32, i32* @mmCG_FDO_CTRL2, align 4
  %46 = call i32 @RREG32_SOC15(i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* @CG_FDO_CTRL2, align 4
  %48 = load i32, i32* @FDO_PWM_MODE, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32 @WREG32_SOC15(i32 %42, i32 0, i32 %43, i32 %50)
  ret i32 0
}

declare dso_local i8* @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
