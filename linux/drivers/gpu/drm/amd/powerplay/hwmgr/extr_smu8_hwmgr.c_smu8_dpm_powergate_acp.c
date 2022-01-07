
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int acp_power_gated; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_ACPPowerOFF ;
 int PPSMC_MSG_ACPPowerON ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static void smu8_dpm_powergate_acp(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 if (data->acp_power_gated == bgate)
  return;

 if (bgate)
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ACPPowerOFF);
 else
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ACPPowerON);
}
