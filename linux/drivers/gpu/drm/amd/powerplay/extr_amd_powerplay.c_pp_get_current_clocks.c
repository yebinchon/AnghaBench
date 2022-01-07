
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int platformCaps; } ;
struct pp_hwmgr {int smu_lock; TYPE_2__* current_ps; TYPE_1__ platform_descriptor; int pm_en; } ;
struct pp_clock_info {int min_eng_clk; int max_eng_clk; int max_bus_bandwidth; int min_bus_bandwidth; int max_mem_clk; int min_mem_clk; } ;
struct amd_pp_simple_clock_info {scalar_t__ level; int member_0; } ;
struct amd_pp_clock_info {scalar_t__ max_clocks_state; int min_engine_clock_in_sr; int max_engine_clock_in_sr; int max_bus_bandwidth; int min_bus_bandwidth; int max_memory_clock; int min_memory_clock; int max_engine_clock; int min_engine_clock; } ;
struct TYPE_4__ {int hardware; } ;


 int EINVAL ;
 int PHM_PerformanceLevelDesignation_Activity ;
 int PHM_PerformanceLevelDesignation_PowerContainment ;
 int PHM_PlatformCaps_PowerContainment ;
 scalar_t__ PP_DAL_POWERLEVEL_7 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int phm_get_clock_info (struct pp_hwmgr*,int *,struct pp_clock_info*,int ) ;
 scalar_t__ phm_get_current_shallow_sleep_clocks (struct pp_hwmgr*,int *,struct pp_clock_info*) ;
 int phm_get_dal_power_level (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int pp_get_current_clocks(void *handle,
  struct amd_pp_clock_info *clocks)
{
 struct amd_pp_simple_clock_info simple_clocks = { 0 };
 struct pp_clock_info hw_clocks;
 struct pp_hwmgr *hwmgr = handle;
 int ret = 0;

 if (!hwmgr || !hwmgr->pm_en)
  return -EINVAL;

 mutex_lock(&hwmgr->smu_lock);

 phm_get_dal_power_level(hwmgr, &simple_clocks);

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
     PHM_PlatformCaps_PowerContainment))
  ret = phm_get_clock_info(hwmgr, &hwmgr->current_ps->hardware,
     &hw_clocks, PHM_PerformanceLevelDesignation_PowerContainment);
 else
  ret = phm_get_clock_info(hwmgr, &hwmgr->current_ps->hardware,
     &hw_clocks, PHM_PerformanceLevelDesignation_Activity);

 if (ret) {
  pr_debug("Error in phm_get_clock_info \n");
  mutex_unlock(&hwmgr->smu_lock);
  return -EINVAL;
 }

 clocks->min_engine_clock = hw_clocks.min_eng_clk;
 clocks->max_engine_clock = hw_clocks.max_eng_clk;
 clocks->min_memory_clock = hw_clocks.min_mem_clk;
 clocks->max_memory_clock = hw_clocks.max_mem_clk;
 clocks->min_bus_bandwidth = hw_clocks.min_bus_bandwidth;
 clocks->max_bus_bandwidth = hw_clocks.max_bus_bandwidth;

 clocks->max_engine_clock_in_sr = hw_clocks.max_eng_clk;
 clocks->min_engine_clock_in_sr = hw_clocks.min_eng_clk;

 if (simple_clocks.level == 0)
  clocks->max_clocks_state = PP_DAL_POWERLEVEL_7;
 else
  clocks->max_clocks_state = simple_clocks.level;

 if (0 == phm_get_current_shallow_sleep_clocks(hwmgr, &hwmgr->current_ps->hardware, &hw_clocks)) {
  clocks->max_engine_clock_in_sr = hw_clocks.max_eng_clk;
  clocks->min_engine_clock_in_sr = hw_clocks.min_eng_clk;
 }
 mutex_unlock(&hwmgr->smu_lock);
 return 0;
}
