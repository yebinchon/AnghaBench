
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int EINVAL ;
 int smu8_program_bootup_state (struct pp_hwmgr*) ;
 int smu8_program_voting_clients (struct pp_hwmgr*) ;
 int smu8_reset_acp_boot_level (struct pp_hwmgr*) ;
 scalar_t__ smu8_start_dpm (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_enable_dpm_tasks(struct pp_hwmgr *hwmgr)
{
 smu8_program_voting_clients(hwmgr);
 if (smu8_start_dpm(hwmgr))
  return -EINVAL;
 smu8_program_bootup_state(hwmgr);
 smu8_reset_acp_boot_level(hwmgr);

 return 0;
}
