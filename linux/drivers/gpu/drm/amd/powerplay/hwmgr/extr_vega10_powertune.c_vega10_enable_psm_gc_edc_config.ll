; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_psm_gc_edc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_psm_gc_edc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AvfsPSMResetConfig_vega10 = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SE_INDEX__SHIFT = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@PSMSEEDCStallPatternConfig_Vega10 = common dso_local global i32 0, align 4
@VEGA10_CONFIGREG_DIDT = common dso_local global i32 0, align 4
@PSMSEEDCStallDelayConfig_Vega10 = common dso_local global i32 0, align 4
@PSMSEEDCCtrlResetConfig_Vega10 = common dso_local global i32 0, align 4
@PSMSEEDCCtrlConfig_Vega10 = common dso_local global i32 0, align 4
@PSMGCEDCDroopCtrlConfig_vega10 = common dso_local global i32 0, align 4
@PHM_PlatformCaps_GCEDC = common dso_local global i32 0, align 4
@PSMGCEDCCtrlResetConfig_vega10 = common dso_local global i32 0, align 4
@PSMGCEDCCtrlConfig_vega10 = common dso_local global i32 0, align 4
@PHM_PlatformCaps_PSM = common dso_local global i32 0, align 4
@AvfsPSMInitConfig_vega10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_enable_psm_gc_edc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_enable_psm_gc_edc_config(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %16)
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %19 = load i32, i32* @AvfsPSMResetConfig_vega10, align 4
  %20 = call i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %18, i32 %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %66, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load i32, i32* @GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK, align 4
  %30 = load i32, i32* @GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GRBM_GFX_INDEX__SE_INDEX__SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @GC, align 4
  %37 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @WREG32_SOC15(i32 %36, i32 0, i32 %37, i32 %38)
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %41 = load i32, i32* @PSMSEEDCStallPatternConfig_Vega10, align 4
  %42 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %43 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %45 = load i32, i32* @PSMSEEDCStallDelayConfig_Vega10, align 4
  %46 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %47 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %51 = load i32, i32* @PSMSEEDCCtrlResetConfig_Vega10, align 4
  %52 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %53 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %57 = load i32, i32* @PSMSEEDCCtrlConfig_Vega10, align 4
  %58 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %59 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 0, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %28
  br label %69

65:                                               ; preds = %28
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %24

69:                                               ; preds = %64, %24
  %70 = load i32, i32* @GC, align 4
  %71 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %72 = call i32 @WREG32_SOC15(i32 %70, i32 0, i32 %71, i32 -536870912)
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %77 = call i32 @vega10_didt_set_mask(%struct.pp_hwmgr* %76, i32 1)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %78)
  %80 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %81 = load i32, i32* @PSMGCEDCDroopCtrlConfig_vega10, align 4
  %82 = call i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %80, i32 %81)
  %83 = load i32, i32* @PHM_PlatformCaps_GCEDC, align 4
  %84 = call i64 @PP_CAP(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %69
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %88 = load i32, i32* @PSMGCEDCCtrlResetConfig_vega10, align 4
  %89 = call i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %87, i32 %88)
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %91 = load i32, i32* @PSMGCEDCCtrlConfig_vega10, align 4
  %92 = call i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %69
  %94 = load i32, i32* @PHM_PlatformCaps_PSM, align 4
  %95 = call i64 @PP_CAP(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %99 = load i32, i32* @AvfsPSMInitConfig_vega10, align 4
  %100 = call i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  ret i32 0
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @vega10_program_gc_didt_config_registers(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vega10_didt_set_mask(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i64 @PP_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
