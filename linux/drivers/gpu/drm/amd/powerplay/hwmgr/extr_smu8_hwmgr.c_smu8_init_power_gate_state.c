
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int uvd_power_gated; int vce_power_gated; int samu_power_gated; int acp_power_gated; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_ACPPowerOFF ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static void smu8_init_power_gate_state(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 data->uvd_power_gated = 0;
 data->vce_power_gated = 0;
 data->samu_power_gated = 0;



 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ACPPowerOFF);
 data->acp_power_gated = 1;


}
