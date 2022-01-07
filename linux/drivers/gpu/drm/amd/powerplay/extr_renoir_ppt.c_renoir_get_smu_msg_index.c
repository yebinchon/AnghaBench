
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct smu_context {int dummy; } ;
struct smu_12_0_cmn2aisc_mapping {int map_to; int valid_mapping; } ;


 int EINVAL ;
 size_t SMU_MSG_MAX_COUNT ;
 struct smu_12_0_cmn2aisc_mapping* renoir_message_map ;

__attribute__((used)) static int renoir_get_smu_msg_index(struct smu_context *smc, uint32_t index)
{
 struct smu_12_0_cmn2aisc_mapping mapping;

 if (index >= SMU_MSG_MAX_COUNT)
  return -EINVAL;

 mapping = renoir_message_map[index];
 if (!(mapping.valid_mapping))
  return -EINVAL;

 return mapping.map_to;
}
