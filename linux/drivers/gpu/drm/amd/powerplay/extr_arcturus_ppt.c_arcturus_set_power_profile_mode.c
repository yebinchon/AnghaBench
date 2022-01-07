
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct smu_context {size_t power_profile_mode; int pm_enabled; } ;


 int EINVAL ;
 size_t PP_SMC_POWER_PROFILE_CUSTOM ;
 int SMU_MSG_SetWorkloadMask ;
 int pr_err (char*,int) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;
 int smu_workload_get_type (struct smu_context*,size_t) ;

__attribute__((used)) static int arcturus_set_power_profile_mode(struct smu_context *smu,
        long *input,
        uint32_t size)
{
 int workload_type = 0;
 uint32_t profile_mode = input[size];
 int ret = 0;

 if (!smu->pm_enabled)
  return -EINVAL;

 if (profile_mode > PP_SMC_POWER_PROFILE_CUSTOM) {
  pr_err("Invalid power profile mode %d\n", profile_mode);
  return -EINVAL;
 }





 workload_type = smu_workload_get_type(smu, profile_mode);
 if (workload_type < 0) {
  pr_err("Unsupported power profile mode %d on arcturus\n", profile_mode);
  return -EINVAL;
 }

 ret = smu_send_smc_msg_with_param(smu,
       SMU_MSG_SetWorkloadMask,
       1 << workload_type);
 if (ret) {
  pr_err("Fail to set workload type %d\n", workload_type);
  return ret;
 }

 smu->power_profile_mode = profile_mode;

 return 0;
}
