
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
 scalar_t__ ffs (scalar_t__) ;
 scalar_t__ fls (scalar_t__) ;
 int smu_get_dpm_freq_by_index (struct smu_context*,int,scalar_t__,scalar_t__*) ;
 int smu_set_soft_freq_range (struct smu_context*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static int navi10_force_clk_levels(struct smu_context *smu,
       enum smu_clk_type clk_type, uint32_t mask)
{

 int ret = 0, size = 0;
 uint32_t soft_min_level = 0, soft_max_level = 0, min_freq = 0, max_freq = 0;

 soft_min_level = mask ? (ffs(mask) - 1) : 0;
 soft_max_level = mask ? (fls(mask) - 1) : 0;

 switch (clk_type) {
 case 132:
 case 130:
 case 129:
 case 131:
 case 128:
 case 134:
 case 133:
  ret = smu_get_dpm_freq_by_index(smu, clk_type, soft_min_level, &min_freq);
  if (ret)
   return size;

  ret = smu_get_dpm_freq_by_index(smu, clk_type, soft_max_level, &max_freq);
  if (ret)
   return size;

  ret = smu_set_soft_freq_range(smu, clk_type, min_freq, max_freq);
  if (ret)
   return size;
  break;
 default:
  break;
 }

 return size;
}
