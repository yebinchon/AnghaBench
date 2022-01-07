
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * current_ps; int * ps; int * request_ps; } ;


 int EINVAL ;
 int kfree (int *) ;

int psm_fini_power_state_table(struct pp_hwmgr *hwmgr)
{
 if (hwmgr == ((void*)0))
  return -EINVAL;

 if (!hwmgr->ps)
  return 0;

 kfree(hwmgr->current_ps);
 kfree(hwmgr->request_ps);
 kfree(hwmgr->ps);
 hwmgr->request_ps = ((void*)0);
 hwmgr->ps = ((void*)0);
 hwmgr->current_ps = ((void*)0);
 return 0;
}
