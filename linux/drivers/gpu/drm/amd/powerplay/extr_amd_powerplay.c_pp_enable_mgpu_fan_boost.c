
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {int smu_lock; TYPE_1__* hwmgr_func; int pm_en; } ;
struct TYPE_2__ {int (* enable_mgpu_fan_boost ) (struct pp_hwmgr*) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pp_hwmgr*) ;

__attribute__((used)) static int pp_enable_mgpu_fan_boost(void *handle)
{
 struct pp_hwmgr *hwmgr = handle;

 if (!hwmgr)
  return -EINVAL;

 if (!hwmgr->pm_en ||
      hwmgr->hwmgr_func->enable_mgpu_fan_boost == ((void*)0))
  return 0;

 mutex_lock(&hwmgr->smu_lock);
 hwmgr->hwmgr_func->enable_mgpu_fan_boost(hwmgr);
 mutex_unlock(&hwmgr->smu_lock);

 return 0;
}
