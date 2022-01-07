
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {int adev; scalar_t__ backend; } ;


 int AMD_CG_STATE_GATE ;
 int AMD_CG_STATE_UNGATE ;
 int AMD_IP_BLOCK_TYPE_VCE ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int amdgpu_device_ip_set_clockgating_state (int ,int ,int ) ;
 int amdgpu_device_ip_set_powergating_state (int ,int ,int ) ;
 int smu7_powerdown_vce (struct pp_hwmgr*) ;
 int smu7_powerup_vce (struct pp_hwmgr*) ;
 int smu7_update_vce_dpm (struct pp_hwmgr*,int) ;

void smu7_powergate_vce(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 data->vce_power_gated = bgate;

 if (bgate) {
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCE,
      AMD_PG_STATE_GATE);
  amdgpu_device_ip_set_clockgating_state(hwmgr->adev,
    AMD_IP_BLOCK_TYPE_VCE,
    AMD_CG_STATE_GATE);
  smu7_update_vce_dpm(hwmgr, 1);
  smu7_powerdown_vce(hwmgr);
 } else {
  smu7_powerup_vce(hwmgr);
  amdgpu_device_ip_set_clockgating_state(hwmgr->adev,
    AMD_IP_BLOCK_TYPE_VCE,
    AMD_CG_STATE_UNGATE);
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCE,
      AMD_PG_STATE_UNGATE);
  smu7_update_vce_dpm(hwmgr, 0);
 }
}
