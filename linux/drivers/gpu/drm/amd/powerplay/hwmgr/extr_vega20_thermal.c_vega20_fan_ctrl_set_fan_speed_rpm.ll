; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_fan_ctrl_set_fan_speed_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_thermal.c_vega20_fan_ctrl_set_fan_speed_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmCG_TACH_CTRL = common dso_local global i32 0, align 4
@CG_TACH_CTRL = common dso_local global i32 0, align 4
@TARGET_PERIOD = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC_RPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega20_fan_ctrl_set_fan_speed_rpm(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %20 = call i64 @PP_CAP(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %24 = call i32 @vega20_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %18
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %32, align 8
  %34 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 60, %35
  %37 = mul nsw i32 %36, 10000
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 8, %38
  %40 = sdiv i32 %37, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @THM, align 4
  %42 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %43 = load i32, i32* @THM, align 4
  %44 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %45 = call i32 @RREG32_SOC15(i32 %43, i32 0, i32 %44)
  %46 = load i32, i32* @CG_TACH_CTRL, align 4
  %47 = load i32, i32* @TARGET_PERIOD, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %49)
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %52 = load i32, i32* @FDO_PWM_MODE_STATIC_RPM, align 4
  %53 = call i32 @vega20_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %30, %27, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @vega20_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @vega20_fan_ctrl_set_static_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
