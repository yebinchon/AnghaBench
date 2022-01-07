
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dpm_level; int smu_lock; int pm_en; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static enum amd_dpm_forced_level pp_dpm_get_performance_level(
        void *handle)
{
 struct pp_hwmgr *hwmgr = handle;
 enum amd_dpm_forced_level level;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 level = hwmgr->dpm_level;
 mutex_unlock(&hwmgr->smu_lock);
 return level;
}
