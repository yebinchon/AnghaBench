
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_performance_level {int non_local_mem_freq; int non_local_mem_width; int core_clock; int memory_clock; int member_0; } ;
struct smu_context {int dummy; } ;
struct smu_clock_info {int min_bus_bandwidth; int min_eng_clk; int min_mem_clk; } ;
typedef enum smu_perf_level_designation { ____Placeholder_smu_perf_level_designation } smu_perf_level_designation ;


 int EINVAL ;
 int PERF_LEVEL_ACTIVITY ;
 int smu_get_perf_level (struct smu_context*,int,struct smu_performance_level*) ;

__attribute__((used)) static int smu_get_clock_info(struct smu_context *smu,
         struct smu_clock_info *clk_info,
         enum smu_perf_level_designation designation)
{
 int ret;
 struct smu_performance_level level = {0};

 if (!clk_info)
  return -EINVAL;

 ret = smu_get_perf_level(smu, PERF_LEVEL_ACTIVITY, &level);
 if (ret)
  return -EINVAL;

 clk_info->min_mem_clk = level.memory_clock;
 clk_info->min_eng_clk = level.core_clock;
 clk_info->min_bus_bandwidth = level.non_local_mem_freq * level.non_local_mem_width;

 ret = smu_get_perf_level(smu, designation, &level);
 if (ret)
  return -EINVAL;

 clk_info->min_mem_clk = level.memory_clock;
 clk_info->min_eng_clk = level.core_clock;
 clk_info->min_bus_bandwidth = level.non_local_mem_freq * level.non_local_mem_width;

 return 0;
}
