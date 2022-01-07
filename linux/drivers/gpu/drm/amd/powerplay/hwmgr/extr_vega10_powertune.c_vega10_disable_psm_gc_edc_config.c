
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int AvfsPSMResetConfig_vega10 ;
 int PHM_PlatformCaps_GCEDC ;
 int PHM_PlatformCaps_PSM ;
 scalar_t__ PP_CAP (int ) ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int cgs_write_register (int ,int ,int) ;
 int mmGC_EDC_CTRL ;
 int vega10_didt_set_mask (struct pp_hwmgr*,int) ;
 int vega10_program_gc_didt_config_registers (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int vega10_disable_psm_gc_edc_config(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t data;

 amdgpu_gfx_rlc_enter_safe_mode(adev);

 vega10_didt_set_mask(hwmgr, 0);

 amdgpu_gfx_rlc_exit_safe_mode(adev);

 if (PP_CAP(PHM_PlatformCaps_GCEDC)) {
  data = 0x00000000;
  cgs_write_register(hwmgr->device, mmGC_EDC_CTRL, data);
 }

 if (PP_CAP(PHM_PlatformCaps_PSM))
  vega10_program_gc_didt_config_registers(hwmgr, AvfsPSMResetConfig_vega10);

 return 0;
}
