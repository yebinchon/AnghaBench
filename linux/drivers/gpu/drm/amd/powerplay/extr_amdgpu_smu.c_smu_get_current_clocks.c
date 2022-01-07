
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int mutex; scalar_t__ support_power_containment; int adev; } ;
struct smu_clock_info {int min_eng_clk; int max_eng_clk; int max_bus_bandwidth; int min_bus_bandwidth; int max_mem_clk; int min_mem_clk; } ;
struct amd_pp_simple_clock_info {scalar_t__ level; int member_0; } ;
struct amd_pp_clock_info {scalar_t__ max_clocks_state; int min_engine_clock_in_sr; int max_engine_clock_in_sr; int max_bus_bandwidth; int min_bus_bandwidth; int max_memory_clock; int min_memory_clock; int max_engine_clock; int min_engine_clock; } ;


 int EINVAL ;
 int PERF_LEVEL_ACTIVITY ;
 int PERF_LEVEL_POWER_CONTAINMENT ;
 scalar_t__ PP_DAL_POWERLEVEL_7 ;
 int is_support_sw_smu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int smu_get_clock_info (struct smu_context*,struct smu_clock_info*,int ) ;
 int smu_get_current_shallow_sleep_clocks (struct smu_context*,struct smu_clock_info*) ;
 int smu_get_dal_power_level (struct smu_context*,struct amd_pp_simple_clock_info*) ;

int smu_get_current_clocks(struct smu_context *smu,
      struct amd_pp_clock_info *clocks)
{
 struct amd_pp_simple_clock_info simple_clocks = {0};
 struct smu_clock_info hw_clocks;
 int ret = 0;

 if (!is_support_sw_smu(smu->adev))
  return -EINVAL;

 mutex_lock(&smu->mutex);

 smu_get_dal_power_level(smu, &simple_clocks);

 if (smu->support_power_containment)
  ret = smu_get_clock_info(smu, &hw_clocks,
      PERF_LEVEL_POWER_CONTAINMENT);
 else
  ret = smu_get_clock_info(smu, &hw_clocks, PERF_LEVEL_ACTIVITY);

 if (ret) {
  pr_err("Error in smu_get_clock_info\n");
  goto failed;
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

        if (!smu_get_current_shallow_sleep_clocks(smu, &hw_clocks)) {
                clocks->max_engine_clock_in_sr = hw_clocks.max_eng_clk;
                clocks->min_engine_clock_in_sr = hw_clocks.min_eng_clk;
        }

failed:
 mutex_unlock(&smu->mutex);
 return ret;
}
