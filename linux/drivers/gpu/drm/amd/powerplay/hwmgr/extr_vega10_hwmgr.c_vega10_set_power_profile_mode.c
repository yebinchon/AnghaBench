
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct vega10_hwmgr {int* custom_profile_mode; } ;
struct pp_hwmgr {size_t power_profile_mode; struct vega10_hwmgr* backend; } ;


 int EINVAL ;
 int PPSMC_MSG_SetCustomGfxDpmParameters ;
 int PPSMC_MSG_SetWorkloadMask ;
 size_t PP_SMC_POWER_PROFILE_CUSTOM ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int vega10_set_power_profile_mode(struct pp_hwmgr *hwmgr, long *input, uint32_t size)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 uint8_t busy_set_point;
 uint8_t FPS;
 uint8_t use_rlc_busy;
 uint8_t min_active_level;
 uint32_t power_profile_mode = input[size];

 if (power_profile_mode == PP_SMC_POWER_PROFILE_CUSTOM) {
  if (size != 0 && size != 4)
   return -EINVAL;





  if (size == 0) {
   if (data->custom_profile_mode[0] != 0)
    goto out;
   else
    return -EINVAL;
  }

  data->custom_profile_mode[0] = busy_set_point = input[0];
  data->custom_profile_mode[1] = FPS = input[1];
  data->custom_profile_mode[2] = use_rlc_busy = input[2];
  data->custom_profile_mode[3] = min_active_level = input[3];
  smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetCustomGfxDpmParameters,
     busy_set_point | FPS<<8 |
     use_rlc_busy << 16 | min_active_level<<24);
 }

out:
 smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_SetWorkloadMask,
      1 << power_profile_mode);
 hwmgr->power_profile_mode = power_profile_mode;

 return 0;
}
