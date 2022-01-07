; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_fan_speed_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_thermal.c_vega10_fan_ctrl_set_fan_speed_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device*, %struct.TYPE_4__ }
%struct.amdgpu_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@PHM_PlatformCaps_MicrocodeFanControl = common dso_local global i32 0, align 4
@THM = common dso_local global i32 0, align 4
@mmCG_TACH_CTRL = common dso_local global i32 0, align 4
@CG_TACH_CTRL = common dso_local global i32 0, align 4
@TARGET_PERIOD = common dso_local global i32 0, align 4
@FDO_PWM_MODE_STATIC_RPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_fan_ctrl_set_fan_speed_rpm(%struct.pp_hwmgr* %0, i32 %1) #0 {
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
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22, %19, %2
  store i32 -1, i32* %3, align 4
  br label %74

39:                                               ; preds = %30
  %40 = load i32, i32* @PHM_PlatformCaps_MicrocodeFanControl, align 4
  %41 = call i64 @PP_CAP(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %45 = call i32 @vega10_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr* %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %46
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %51 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %50, i32 0, i32 0
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %51, align 8
  %53 = call i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 60, %54
  %56 = mul nsw i32 %55, 10000
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 8, %57
  %59 = sdiv i32 %56, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @THM, align 4
  %61 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %62 = load i32, i32* @THM, align 4
  %63 = load i32, i32* @mmCG_TACH_CTRL, align 4
  %64 = call i32 @RREG32_SOC15(i32 %62, i32 0, i32 %63)
  %65 = load i32, i32* @CG_TACH_CTRL, align 4
  %66 = load i32, i32* @TARGET_PERIOD, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = call i32 @WREG32_SOC15(i32 %60, i32 0, i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %49, %46
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %72 = load i32, i32* @FDO_PWM_MODE_STATIC_RPM, align 4
  %73 = call i32 @vega10_fan_ctrl_set_static_mode(%struct.pp_hwmgr* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @vega10_fan_ctrl_stop_smc_fan_control(%struct.pp_hwmgr*) #1

declare dso_local i32 @amdgpu_asic_get_xclk(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @vega10_fan_ctrl_set_static_mode(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
