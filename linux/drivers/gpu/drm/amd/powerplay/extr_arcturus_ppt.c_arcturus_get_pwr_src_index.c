
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct smu_context {int dummy; } ;
struct smu_11_0_cmn2aisc_mapping {int map_to; int valid_mapping; } ;


 int EINVAL ;
 size_t SMU_POWER_SOURCE_COUNT ;
 struct smu_11_0_cmn2aisc_mapping* arcturus_pwr_src_map ;
 int pr_warn (char*,size_t) ;

__attribute__((used)) static int arcturus_get_pwr_src_index(struct smu_context *smc, uint32_t index)
{
 struct smu_11_0_cmn2aisc_mapping mapping;

 if (index >= SMU_POWER_SOURCE_COUNT)
  return -EINVAL;

 mapping = arcturus_pwr_src_map[index];
 if (!(mapping.valid_mapping)) {
  pr_warn("Unsupported SMU power source: %d\n", index);
  return -EINVAL;
 }

 return mapping.map_to;
}
