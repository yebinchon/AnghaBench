; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_se_edc_force_stall_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_se_edc_force_stall_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@SEEDCForceStallPatternConfig_Vega10 = common dso_local global i32 0, align 4
@VEGA10_CONFIGREG_DIDT = common dso_local global i32 0, align 4
@SEEDCCtrlForceStallConfig_Vega10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_enable_se_edc_force_stall_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_enable_se_edc_force_stall_config(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 0
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %9)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @GC, align 4
  %15 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %16 = call i32 @WREG32_SOC15(i32 %14, i32 0, i32 %15, i32 -536870912)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %21 = load i32, i32* @SEEDCForceStallPatternConfig_Vega10, align 4
  %22 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %23 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = load i32, i32* @SEEDCCtrlForceStallConfig_Vega10, align 4
  %26 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %27 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 0, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i32 @vega10_didt_set_mask(%struct.pp_hwmgr* %35, i32 0)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @vega10_didt_set_mask(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
