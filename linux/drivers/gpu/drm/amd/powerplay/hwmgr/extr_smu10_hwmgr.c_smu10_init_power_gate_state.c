
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu10_hwmgr {int vcn_power_gated; int isp_tileA_power_gated; int isp_tileB_power_gated; } ;
struct pp_hwmgr {struct amdgpu_device* adev; scalar_t__ backend; } ;
struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_GFX_PG ;
 int PPSMC_MSG_SetGfxCGPG ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu10_init_power_gate_state(struct pp_hwmgr *hwmgr)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);
 struct amdgpu_device *adev = hwmgr->adev;

 smu10_data->vcn_power_gated = 1;
 smu10_data->isp_tileA_power_gated = 1;
 smu10_data->isp_tileB_power_gated = 1;

 if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG)
  return smum_send_msg_to_smc_with_parameter(hwmgr,
          PPSMC_MSG_SetGfxCGPG,
          1);
 else
  return 0;
}
