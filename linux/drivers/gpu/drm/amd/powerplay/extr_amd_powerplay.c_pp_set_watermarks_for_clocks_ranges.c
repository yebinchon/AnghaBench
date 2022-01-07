
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_set_watermarks_for_clocks_ranges (struct pp_hwmgr*,void*) ;

__attribute__((used)) static int pp_set_watermarks_for_clocks_ranges(void *handle,
  void *clock_ranges)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en || !clock_ranges)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = phm_set_watermarks_for_clocks_ranges(hwmgr,
   clock_ranges);
 mutex_unlock(&hwmgr->smu_lock);

 return ret;
}
