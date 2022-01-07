
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_BacoWorkAroundFlushVDCI ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int vega20_set_pptable_driver_address (struct pp_hwmgr*) ;

int vega20_baco_apply_vdci_flush_workaround(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 ret = vega20_set_pptable_driver_address(hwmgr);
 if (ret)
  return ret;

 return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_BacoWorkAroundFlushVDCI);
}
