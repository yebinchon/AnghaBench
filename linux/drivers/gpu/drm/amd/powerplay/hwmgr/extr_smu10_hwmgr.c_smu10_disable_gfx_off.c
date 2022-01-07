
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_2__ {int pp_feature; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int PPSMC_MSG_DisableGfxOff ;
 int PP_GFXOFF_MASK ;
 int msleep (int) ;
 int smu10_is_gfx_on (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu10_disable_gfx_off(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 if (adev->pm.pp_feature & PP_GFXOFF_MASK) {
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_DisableGfxOff);


  while (!smu10_is_gfx_on(hwmgr))
   msleep(1);
 }

 return 0;
}
