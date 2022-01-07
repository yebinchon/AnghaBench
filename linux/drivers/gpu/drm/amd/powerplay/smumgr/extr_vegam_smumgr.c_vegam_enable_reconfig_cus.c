
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


 int PPSMC_MSG_EnableModeSwitchRLCNotification ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vegam_enable_reconfig_cus(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 smum_send_msg_to_smc_with_parameter(hwmgr,
         PPSMC_MSG_EnableModeSwitchRLCNotification,
         adev->gfx.cu_info.number);

 return 0;
}
