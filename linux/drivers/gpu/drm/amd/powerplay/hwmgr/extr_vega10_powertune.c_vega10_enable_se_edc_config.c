
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int max_shader_engines; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct amdgpu_device {int grbm_idx_mutex; TYPE_2__ gfx; } ;


 int GC ;
 int GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK ;
 int GRBM_GFX_INDEX__SE_INDEX__SHIFT ;
 int GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK ;
 int SEDiDtWeightConfig_Vega10 ;
 int SEEDCCtrlConfig_Vega10 ;
 int SEEDCCtrlResetConfig_Vega10 ;
 int SEEDCStallDelayConfig_Vega10 ;
 int SEEDCStallPatternConfig_Vega10 ;
 int SEEDCThresholdConfig_Vega10 ;
 int VEGA10_CONFIGREG_DIDT ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int mmGRBM_GFX_INDEX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vega10_didt_set_mask (struct pp_hwmgr*,int) ;
 int vega10_program_didt_config_registers (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega10_enable_se_edc_config(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int result;
 uint32_t num_se = 0, count, data;

 num_se = adev->gfx.config.max_shader_engines;

 amdgpu_gfx_rlc_enter_safe_mode(adev);

 mutex_lock(&adev->grbm_idx_mutex);
 for (count = 0; count < num_se; count++) {
  data = GRBM_GFX_INDEX__INSTANCE_BROADCAST_WRITES_MASK | GRBM_GFX_INDEX__SH_BROADCAST_WRITES_MASK | ( count << GRBM_GFX_INDEX__SE_INDEX__SHIFT);
  WREG32_SOC15(GC, 0, mmGRBM_GFX_INDEX, data);
  result = vega10_program_didt_config_registers(hwmgr, SEDiDtWeightConfig_Vega10, VEGA10_CONFIGREG_DIDT);
  result |= vega10_program_didt_config_registers(hwmgr, SEEDCStallPatternConfig_Vega10, VEGA10_CONFIGREG_DIDT);
  result |= vega10_program_didt_config_registers(hwmgr, SEEDCStallDelayConfig_Vega10, VEGA10_CONFIGREG_DIDT);
  result |= vega10_program_didt_config_registers(hwmgr, SEEDCThresholdConfig_Vega10, VEGA10_CONFIGREG_DIDT);
  result |= vega10_program_didt_config_registers(hwmgr, SEEDCCtrlResetConfig_Vega10, VEGA10_CONFIGREG_DIDT);
  result |= vega10_program_didt_config_registers(hwmgr, SEEDCCtrlConfig_Vega10, VEGA10_CONFIGREG_DIDT);

  if (0 != result)
   break;
 }
 WREG32_SOC15(GC, 0, mmGRBM_GFX_INDEX, 0xE0000000);
 mutex_unlock(&adev->grbm_idx_mutex);

 vega10_didt_set_mask(hwmgr, 1);

 amdgpu_gfx_rlc_exit_safe_mode(adev);

 return 0;
}
