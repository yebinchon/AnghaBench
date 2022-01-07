
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int smu_lock; int pm_en; } ;
struct amd_pp_clocks {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phm_get_clock_by_type (struct pp_hwmgr*,int,struct amd_pp_clocks*) ;

__attribute__((used)) static int pp_get_clock_by_type(void *handle, enum amd_pp_clock_type type, struct amd_pp_clocks *clocks)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 if (clocks == ((void*)0))
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);
 ret = phm_get_clock_by_type(hwmgr, type, clocks);
 mutex_unlock(&hwmgr->smu_lock);
 return ret;
}
