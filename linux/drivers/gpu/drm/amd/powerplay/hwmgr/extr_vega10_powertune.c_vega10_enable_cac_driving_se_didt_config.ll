; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_cac_driving_se_didt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_enable_cac_driving_se_didt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX__SE_INDEX__SHIFT = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmGRBM_GFX_INDEX = common dso_local global i32 0, align 4
@SEDiDtStallCtrlConfig_vega10 = common dso_local global i32 0, align 4
@VEGA10_CONFIGREG_DIDT = common dso_local global i32 0, align 4
@SEDiDtStallPatternConfig_vega10 = common dso_local global i32 0, align 4
@SEDiDtWeightConfig_Vega10 = common dso_local global i32 0, align 4
@SEDiDtCtrl1Config_Vega10 = common dso_local global i32 0, align 4
@SEDiDtCtrl2Config_Vega10 = common dso_local global i32 0, align 4
@SEDiDtCtrl3Config_vega10 = common dso_local global i32 0, align 4
@SEDiDtTuningCtrlConfig_Vega10 = common dso_local global i32 0, align 4
@SELCacConfig_Vega10 = common dso_local global i32 0, align 4
@VEGA10_CONFIGREG_SECAC = common dso_local global i32 0, align 4
@SEDiDtCtrl0Config_Vega10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_enable_cac_driving_se_didt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_enable_cac_driving_se_didt_config(%struct.pp_hwmgr* %0) #0 {
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
  store i32 0, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %93, %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %21
  %26 = load i32, i32* @GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK, align 4
  %27 = load i32, i32* @GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GRBM_GFX_INDEX__SE_INDEX__SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @GC, align 4
  %34 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @WREG32_SOC15(i32 %33, i32 0, i32 %34, i32 %35)
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = load i32, i32* @SEDiDtStallCtrlConfig_vega10, align 4
  %39 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %40 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %42 = load i32, i32* @SEDiDtStallPatternConfig_vega10, align 4
  %43 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %44 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %41, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %48 = load i32, i32* @SEDiDtWeightConfig_Vega10, align 4
  %49 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %50 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %54 = load i32, i32* @SEDiDtCtrl1Config_Vega10, align 4
  %55 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %56 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = load i32, i32* @SEDiDtCtrl2Config_Vega10, align 4
  %61 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %62 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %66 = load i32, i32* @SEDiDtCtrl3Config_vega10, align 4
  %67 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %68 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %72 = load i32, i32* @SEDiDtTuningCtrlConfig_Vega10, align 4
  %73 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %74 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = load i32, i32* @SELCacConfig_Vega10, align 4
  %79 = load i32, i32* @VEGA10_CONFIGREG_SECAC, align 4
  %80 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %84 = load i32, i32* @SEDiDtCtrl0Config_Vega10, align 4
  %85 = load i32, i32* @VEGA10_CONFIGREG_DIDT, align 4
  %86 = call i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 0, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %25
  br label %96

92:                                               ; preds = %25
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %21

96:                                               ; preds = %91, %21
  %97 = load i32, i32* @GC, align 4
  %98 = load i32, i32* @mmGRBM_GFX_INDEX, align 4
  %99 = call i32 @WREG32_SOC15(i32 %97, i32 0, i32 %98, i32 -536870912)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %104 = call i32 @vega10_didt_set_mask(%struct.pp_hwmgr* %103, i32 1)
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %105)
  ret i32 0
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @vega10_program_didt_config_registers(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vega10_didt_set_mask(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
