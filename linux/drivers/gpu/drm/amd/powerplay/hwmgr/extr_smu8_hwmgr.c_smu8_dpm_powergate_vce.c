
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {int adev; struct smu8_hwmgr* backend; } ;


 int AMD_CG_STATE_GATE ;
 int AMD_CG_STATE_UNGATE ;
 int AMD_IP_BLOCK_TYPE_VCE ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int amdgpu_device_ip_set_clockgating_state (int ,int ,int ) ;
 int amdgpu_device_ip_set_powergating_state (int ,int ,int ) ;
 int smu8_dpm_powerdown_vce (struct pp_hwmgr*) ;
 int smu8_dpm_powerup_vce (struct pp_hwmgr*) ;
 int smu8_dpm_update_vce_dpm (struct pp_hwmgr*) ;
 int smu8_enable_disable_vce_dpm (struct pp_hwmgr*,int) ;

__attribute__((used)) static void smu8_dpm_powergate_vce(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 if (bgate) {
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
     AMD_IP_BLOCK_TYPE_VCE,
     AMD_PG_STATE_GATE);
  amdgpu_device_ip_set_clockgating_state(hwmgr->adev,
     AMD_IP_BLOCK_TYPE_VCE,
     AMD_CG_STATE_GATE);
  smu8_enable_disable_vce_dpm(hwmgr, 0);
  smu8_dpm_powerdown_vce(hwmgr);
  data->vce_power_gated = 1;
 } else {
  smu8_dpm_powerup_vce(hwmgr);
  data->vce_power_gated = 0;
  amdgpu_device_ip_set_clockgating_state(hwmgr->adev,
     AMD_IP_BLOCK_TYPE_VCE,
     AMD_CG_STATE_UNGATE);
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
     AMD_IP_BLOCK_TYPE_VCE,
     AMD_PG_STATE_UNGATE);
  smu8_dpm_update_vce_dpm(hwmgr);
  smu8_enable_disable_vce_dpm(hwmgr, 1);
 }
}
