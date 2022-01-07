
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
typedef int PPSMC_Msg ;


 scalar_t__ PPSMC_HasDisplay ;
 scalar_t__ PPSMC_NoDisplay ;
 scalar_t__ smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int
smu7_notify_smc_display_change(struct pp_hwmgr *hwmgr, bool has_display)
{
 PPSMC_Msg msg = has_display ? (PPSMC_Msg)PPSMC_HasDisplay : (PPSMC_Msg)PPSMC_NoDisplay;

 return (smum_send_msg_to_smc(hwmgr, msg) == 0) ? 0 : -1;
}
