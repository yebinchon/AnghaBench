
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_RegulatorHot ;
 int PPSMC_MSG_EnableVRHotGPIOInterrupt ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_enable_vrhot_gpio_interrupt(struct pp_hwmgr *hwmgr)
{

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_RegulatorHot))
  return smum_send_msg_to_smc(hwmgr,
    PPSMC_MSG_EnableVRHotGPIOInterrupt);

 return 0;
}
