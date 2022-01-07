
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
struct pp_states_info {int nums; int * states; } ;


 int EINVAL ;
 int POWER_STATE_TYPE_DEFAULT ;
 int memset (struct pp_states_info*,int ,int) ;

int smu_get_power_num_states(struct smu_context *smu,
        struct pp_states_info *state_info)
{
 if (!state_info)
  return -EINVAL;


 memset(state_info, 0, sizeof(struct pp_states_info));
 state_info->nums = 1;
 state_info->states[0] = POWER_STATE_TYPE_DEFAULT;

 return 0;
}
