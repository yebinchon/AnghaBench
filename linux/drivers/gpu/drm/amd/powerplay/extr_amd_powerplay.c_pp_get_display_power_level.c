
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
struct amd_pp_simple_clock_info {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_get_dal_power_level (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ;

__attribute__((used)) static int pp_get_display_power_level(void *handle,
  struct amd_pp_simple_clock_info *output)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en ||!output)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = phm_get_dal_power_level(hwmgr, output);
 mutex_unlock(&hwmgr->smu_lock);
 return ret;
}
