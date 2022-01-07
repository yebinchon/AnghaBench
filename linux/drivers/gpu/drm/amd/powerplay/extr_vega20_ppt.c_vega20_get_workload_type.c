
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
struct smu_11_0_cmn2aisc_mapping {int map_to; int valid_mapping; } ;
typedef enum PP_SMC_POWER_PROFILE { ____Placeholder_PP_SMC_POWER_PROFILE } PP_SMC_POWER_PROFILE ;


 int EINVAL ;
 int PP_SMC_POWER_PROFILE_CUSTOM ;
 struct smu_11_0_cmn2aisc_mapping* vega20_workload_map ;

__attribute__((used)) static int vega20_get_workload_type(struct smu_context *smu, enum PP_SMC_POWER_PROFILE profile)
{
 struct smu_11_0_cmn2aisc_mapping mapping;

 if (profile > PP_SMC_POWER_PROFILE_CUSTOM)
  return -EINVAL;

 mapping = vega20_workload_map[profile];
 if (!(mapping.valid_mapping)) {
  return -EINVAL;
 }

 return mapping.map_to;
}
