
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_ResetToDefaults ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_reset_to_default(struct pp_hwmgr *hwmgr)
{
 return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ResetToDefaults);
}
