
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int fan_is_controlled_by_smc; } ;
struct amdgpu_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_StopFanControl ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;
 struct si_power_info* si_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int si_fan_ctrl_stop_smc_fan_control(struct amdgpu_device *adev)
{
 struct si_power_info *si_pi = si_get_pi(adev);
 PPSMC_Result ret;

 ret = amdgpu_si_send_msg_to_smc(adev, PPSMC_StopFanControl);

 if (ret == PPSMC_Result_OK) {
  si_pi->fan_is_controlled_by_smc = 0;
  return 0;
 } else {
  return -EINVAL;
 }
}
