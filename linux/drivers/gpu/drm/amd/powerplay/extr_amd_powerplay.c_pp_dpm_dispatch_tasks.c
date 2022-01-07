
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
typedef enum amd_pp_task { ____Placeholder_amd_pp_task } amd_pp_task ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;


 int EINVAL ;
 int hwmgr_handle_task (struct pp_hwmgr*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pp_dpm_dispatch_tasks(void *handle, enum amd_pp_task task_id,
  enum amd_pm_state_type *user_state)
{
 int ret = 0;
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = hwmgr_handle_task(hwmgr, task_id, user_state);
 mutex_unlock(&hwmgr->smu_lock);

 return ret;
}
