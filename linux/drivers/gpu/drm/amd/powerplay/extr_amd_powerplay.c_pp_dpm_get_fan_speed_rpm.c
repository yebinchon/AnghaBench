
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {int smu_lock; TYPE_1__* hwmgr_func; int pm_en; } ;
struct TYPE_2__ {int (* get_fan_speed_rpm ) (struct pp_hwmgr*,int *) ;} ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int pp_dpm_get_fan_speed_rpm(void *handle, uint32_t *rpm)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 if (hwmgr->hwmgr_func->get_fan_speed_rpm == ((void*)0))
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = hwmgr->hwmgr_func->get_fan_speed_rpm(hwmgr, rpm);
 mutex_unlock(&hwmgr->smu_lock);
 return ret;
}
