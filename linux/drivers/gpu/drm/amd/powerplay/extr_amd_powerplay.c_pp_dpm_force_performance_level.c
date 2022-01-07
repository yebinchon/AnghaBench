
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dpm_level; int request_dpm_level; int smu_lock; int pm_en; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int AMD_PP_TASK_READJUST_POWER_STATE ;
 int EINVAL ;
 int hwmgr_handle_task (struct pp_hwmgr*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pp_dpm_en_umd_pstate (struct pp_hwmgr*,int*) ;

__attribute__((used)) static int pp_dpm_force_performance_level(void *handle,
     enum amd_dpm_forced_level level)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 if (level == hwmgr->dpm_level)
  return 0;

 mutex_lock(&hwmgr->smu_lock);
 pp_dpm_en_umd_pstate(hwmgr, &level);
 hwmgr->request_dpm_level = level;
 hwmgr_handle_task(hwmgr, AMD_PP_TASK_READJUST_POWER_STATE, ((void*)0));
 mutex_unlock(&hwmgr->smu_lock);

 return 0;
}
