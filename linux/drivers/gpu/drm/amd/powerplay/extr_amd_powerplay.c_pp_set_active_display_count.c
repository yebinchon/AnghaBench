
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int smu_lock; int pm_en; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_set_active_display_count (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int pp_set_active_display_count(void *handle, uint32_t count)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = phm_set_active_display_count(hwmgr, count);
 mutex_unlock(&hwmgr->smu_lock);

 return ret;
}
