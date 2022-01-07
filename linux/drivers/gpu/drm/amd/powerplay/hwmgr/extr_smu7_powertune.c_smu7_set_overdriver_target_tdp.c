
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_OverDriveSetTargetTdp ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_set_overdriver_target_tdp(struct pp_hwmgr *hwmgr,
      uint32_t target_tdp)
{
 return smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_OverDriveSetTargetTdp, target_tdp);
}
