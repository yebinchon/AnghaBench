
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int grbm_idx_mutex; } ;


 int GC ;
 int SEEDCCtrlForceStallConfig_Vega10 ;
 int SEEDCForceStallPatternConfig_Vega10 ;
 int VEGA10_CONFIGREG_DIDT ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int mmGRBM_GFX_INDEX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vega10_didt_set_mask (struct pp_hwmgr*,int) ;
 int vega10_program_didt_config_registers (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega10_enable_se_edc_force_stall_config(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int result;

 amdgpu_gfx_rlc_enter_safe_mode(adev);

 mutex_lock(&adev->grbm_idx_mutex);
 WREG32_SOC15(GC, 0, mmGRBM_GFX_INDEX, 0xE0000000);
 mutex_unlock(&adev->grbm_idx_mutex);

 result = vega10_program_didt_config_registers(hwmgr, SEEDCForceStallPatternConfig_Vega10, VEGA10_CONFIGREG_DIDT);
 result |= vega10_program_didt_config_registers(hwmgr, SEEDCCtrlForceStallConfig_Vega10, VEGA10_CONFIGREG_DIDT);
 if (0 != result)
  return result;

 vega10_didt_set_mask(hwmgr, 0);

 amdgpu_gfx_rlc_exit_safe_mode(adev);

 return 0;
}
