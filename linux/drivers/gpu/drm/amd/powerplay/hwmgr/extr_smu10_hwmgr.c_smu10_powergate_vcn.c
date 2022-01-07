
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu10_hwmgr {int vcn_power_gated; } ;
struct pp_hwmgr {int adev; scalar_t__ backend; } ;


 int AMD_IP_BLOCK_TYPE_VCN ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int PPSMC_MSG_PowerDownVcn ;
 int PPSMC_MSG_PowerUpVcn ;
 int amdgpu_device_ip_set_powergating_state (int ,int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static void smu10_powergate_vcn(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);

 if (bgate) {
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCN,
      AMD_PG_STATE_GATE);
  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_PowerDownVcn, 0);
  smu10_data->vcn_power_gated = 1;
 } else {
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_PowerUpVcn, 0);
  amdgpu_device_ip_set_powergating_state(hwmgr->adev,
      AMD_IP_BLOCK_TYPE_VCN,
      AMD_PG_STATE_UNGATE);
  smu10_data->vcn_power_gated = 0;
 }
}
