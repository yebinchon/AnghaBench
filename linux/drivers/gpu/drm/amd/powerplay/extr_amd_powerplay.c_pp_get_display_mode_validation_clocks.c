
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {int smu_lock; TYPE_1__ platform_descriptor; int pm_en; } ;
struct amd_pp_simple_clock_info {int level; } ;


 int EINVAL ;
 int PHM_PlatformCaps_DynamicPatchPowerState ;
 int PP_DAL_POWERLEVEL_7 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int phm_get_max_high_clocks (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ;

__attribute__((used)) static int pp_get_display_mode_validation_clocks(void *handle,
  struct amd_pp_simple_clock_info *clocks)
{
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en ||!clocks)
  return -EINVAL;

 clocks->level = PP_DAL_POWERLEVEL_7;

 mutex_lock(&hwmgr->smu_lock);

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DynamicPatchPowerState))
  ret = phm_get_max_high_clocks(hwmgr, clocks);

 mutex_unlock(&hwmgr->smu_lock);
 return ret;
}
