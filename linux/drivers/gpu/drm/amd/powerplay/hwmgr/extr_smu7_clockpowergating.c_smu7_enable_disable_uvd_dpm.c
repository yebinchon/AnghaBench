
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_UVDDPM_Disable ;
 int PPSMC_MSG_UVDDPM_Enable ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_enable_disable_uvd_dpm(struct pp_hwmgr *hwmgr, bool enable)
{
 return smum_send_msg_to_smc(hwmgr, enable ?
   PPSMC_MSG_UVDDPM_Enable :
   PPSMC_MSG_UVDDPM_Disable);
}
