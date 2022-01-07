
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega20_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {int adev; scalar_t__ backend; } ;


 int AMD_IP_BLOCK_TYPE_VCE ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int amdgpu_device_ip_set_powergating_state (int ,int ,int ) ;
 int vega20_enable_disable_vce_dpm (struct pp_hwmgr*,int) ;

__attribute__((used)) static void vega20_power_gate_vce(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);

 if (data->vce_power_gated == bgate)
  return ;

 data->vce_power_gated = bgate;
 if (bgate) {
  vega20_enable_disable_vce_dpm(hwmgr, !bgate);
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCE,
      AMD_PG_STATE_GATE);
 } else {
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCE,
      AMD_PG_STATE_UNGATE);
  vega20_enable_disable_vce_dpm(hwmgr, !bgate);
 }

}
