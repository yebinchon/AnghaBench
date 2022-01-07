
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int TDPODLimit; } ;
struct pp_hwmgr {int default_power_limit; int power_limit; int smu_lock; TYPE_1__ platform_descriptor; scalar_t__ od_enabled; int pm_en; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int pp_get_power_limit(void *handle, uint32_t *limit, bool default_limit)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr || !hwmgr->pm_en ||!limit)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);

 if (default_limit) {
  *limit = hwmgr->default_power_limit;
  if (hwmgr->od_enabled) {
   *limit *= (100 + hwmgr->platform_descriptor.TDPODLimit);
   *limit /= 100;
  }
 }
 else
  *limit = hwmgr->power_limit;

 mutex_unlock(&hwmgr->smu_lock);

 return 0;
}
