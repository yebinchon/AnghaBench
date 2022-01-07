
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct pp_hwmgr {long power_profile_mode; int gfxoff_state_changed_by_workload; } ;


 int EINVAL ;
 int PPSMC_MSG_ActiveProcessNotify ;
 long PP_SMC_POWER_PROFILE_COMPUTE ;
 int conv_power_profile_to_pplib_workload (long) ;
 int pr_err (char*,long) ;
 int smu10_gfx_off_control (struct pp_hwmgr*,int) ;
 scalar_t__ smu10_is_raven1_refresh (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu10_set_power_profile_mode(struct pp_hwmgr *hwmgr, long *input, uint32_t size)
{
 int workload_type = 0;
 int result = 0;

 if (input[size] > PP_SMC_POWER_PROFILE_COMPUTE) {
  pr_err("Invalid power profile mode %ld\n", input[size]);
  return -EINVAL;
 }
 if (hwmgr->power_profile_mode == input[size])
  return 0;


 workload_type =
  conv_power_profile_to_pplib_workload(input[size]);
 if (workload_type &&
     smu10_is_raven1_refresh(hwmgr) &&
     !hwmgr->gfxoff_state_changed_by_workload) {
  smu10_gfx_off_control(hwmgr, 0);
  hwmgr->gfxoff_state_changed_by_workload = 1;
 }
 result = smum_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_ActiveProcessNotify,
      1 << workload_type);
 if (!result)
  hwmgr->power_profile_mode = input[size];
 if (workload_type && hwmgr->gfxoff_state_changed_by_workload) {
  smu10_gfx_off_control(hwmgr, 1);
  hwmgr->gfxoff_state_changed_by_workload = 0;
 }

 return 0;
}
