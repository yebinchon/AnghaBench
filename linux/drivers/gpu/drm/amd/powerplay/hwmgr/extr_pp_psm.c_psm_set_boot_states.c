
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int ps; } ;


 int EINVAL ;
 int PP_StateClassificationFlag_Boot ;
 int psm_get_state_by_classification (struct pp_hwmgr*,int ,unsigned long*) ;
 int psm_set_states (struct pp_hwmgr*,unsigned long) ;

int psm_set_boot_states(struct pp_hwmgr *hwmgr)
{
 unsigned long state_id;
 int ret = -EINVAL;

 if (!hwmgr->ps)
  return 0;

 if (!psm_get_state_by_classification(hwmgr, PP_StateClassificationFlag_Boot,
     &state_id))
  ret = psm_set_states(hwmgr, state_id);

 return ret;
}
