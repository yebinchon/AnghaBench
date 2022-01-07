
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
struct pp_clock_levels_with_latency {int num_levels; TYPE_1__* data; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_2__ {int clocks_in_khz; int latency_in_us; } ;


 int MAX_NUM_CLOCKS ;



 int min (int,int) ;
 int smu_get_dpm_freq_by_index (struct smu_context*,int,int,int*) ;
 int smu_get_dpm_level_count (struct smu_context*,int,int*) ;

__attribute__((used)) static int navi10_get_clock_by_type_with_latency(struct smu_context *smu,
       enum smu_clk_type clk_type,
       struct pp_clock_levels_with_latency *clocks)
{
 int ret = 0, i = 0;
 uint32_t level_count = 0, freq = 0;

 switch (clk_type) {
 case 129:
 case 130:
 case 128:
  ret = smu_get_dpm_level_count(smu, clk_type, &level_count);
  if (ret)
   return ret;

  level_count = min(level_count, (uint32_t)MAX_NUM_CLOCKS);
  clocks->num_levels = level_count;

  for (i = 0; i < level_count; i++) {
   ret = smu_get_dpm_freq_by_index(smu, clk_type, i, &freq);
   if (ret)
    return ret;

   clocks->data[i].clocks_in_khz = freq * 1000;
   clocks->data[i].latency_in_us = 0;
  }
  break;
 default:
  break;
 }

 return ret;
}
