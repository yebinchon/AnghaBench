
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_PowerDownSdma ;
 int PPSMC_MSG_PowerUpSdma ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu10_powergate_sdma(struct pp_hwmgr *hwmgr, bool gate)
{
 if (gate)
  return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_PowerDownSdma);
 else
  return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_PowerUpSdma);
}
