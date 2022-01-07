
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
struct pp_display_clock_request {int dummy; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_display_clock_voltage_request (struct pp_hwmgr*,struct pp_display_clock_request*) ;

__attribute__((used)) static int pp_display_clock_voltage_request(void *handle,
  struct pp_display_clock_request *clock)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en ||!clock)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = phm_display_clock_voltage_request(hwmgr, clock);
 mutex_unlock(&hwmgr->smu_lock);

 return ret;
}
