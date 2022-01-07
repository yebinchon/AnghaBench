
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ulMaxRPM; int ulMinRPM; } ;
struct TYPE_5__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {int smu_lock; TYPE_3__* hwmgr_func; TYPE_2__ thermal_controller; int pstate_mclk; int pstate_sclk; int pm_en; } ;
struct TYPE_6__ {int (* read_sensor ) (struct pp_hwmgr*,int,void*,int*) ;} ;






 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pp_hwmgr*,int,void*,int*) ;

__attribute__((used)) static int pp_dpm_read_sensor(void *handle, int idx,
         void *value, int *size)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en || !value)
  return -EINVAL;

 switch (idx) {
 case 128:
  *((uint32_t *)value) = hwmgr->pstate_sclk;
  return 0;
 case 129:
  *((uint32_t *)value) = hwmgr->pstate_mclk;
  return 0;
 case 130:
  *((uint32_t *)value) = hwmgr->thermal_controller.fanInfo.ulMinRPM;
  return 0;
 case 131:
  *((uint32_t *)value) = hwmgr->thermal_controller.fanInfo.ulMaxRPM;
  return 0;
 default:
  mutex_lock(&hwmgr->smu_lock);
  ret = hwmgr->hwmgr_func->read_sensor(hwmgr, idx, value, size);
  mutex_unlock(&hwmgr->smu_lock);
  return ret;
 }
}
