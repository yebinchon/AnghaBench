
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
struct pp_clock_levels_with_voltage {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_get_clock_by_type_with_voltage (struct pp_hwmgr*,int,struct pp_clock_levels_with_voltage*) ;

__attribute__((used)) static int pp_get_clock_by_type_with_voltage(void *handle,
  enum amd_pp_clock_type type,
  struct pp_clock_levels_with_voltage *clocks)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en ||!clocks)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);

 ret = phm_get_clock_by_type_with_voltage(hwmgr, type, clocks);

 mutex_unlock(&hwmgr->smu_lock);
 return ret;
}
