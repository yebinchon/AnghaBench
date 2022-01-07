
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_3__ {int number; } ;
struct TYPE_4__ {TYPE_1__ cu_info; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int PPSMC_MSG_GFX_CU_PG_DISABLE ;
 int PPSMC_MSG_GFX_CU_PG_ENABLE ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

int smu7_powergate_gfx(struct pp_hwmgr *hwmgr, bool enable)
{
 struct amdgpu_device *adev = hwmgr->adev;

 if (enable)
  return smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_GFX_CU_PG_ENABLE,
     adev->gfx.cu_info.number);
 else
  return smum_send_msg_to_smc(hwmgr,
    PPSMC_MSG_GFX_CU_PG_DISABLE);
}
