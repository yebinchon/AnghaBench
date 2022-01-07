
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int EINVAL ;
 int smu8_clear_voting_clients (struct pp_hwmgr*) ;
 int smu8_disable_nb_dpm (struct pp_hwmgr*) ;
 scalar_t__ smu8_stop_dpm (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
{
 smu8_disable_nb_dpm(hwmgr);

 smu8_clear_voting_clients(hwmgr);
 if (smu8_stop_dpm(hwmgr))
  return -EINVAL;

 return 0;
}
