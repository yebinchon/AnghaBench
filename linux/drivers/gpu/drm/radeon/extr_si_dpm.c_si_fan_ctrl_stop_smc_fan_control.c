
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_power_info {int fan_is_controlled_by_smc; } ;
struct radeon_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_StopFanControl ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;
 scalar_t__ si_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int si_fan_ctrl_stop_smc_fan_control(struct radeon_device *rdev)
{
 struct si_power_info *si_pi = si_get_pi(rdev);
 PPSMC_Result ret;

 ret = si_send_msg_to_smc(rdev, PPSMC_StopFanControl);

 if (ret == PPSMC_Result_OK) {
  si_pi->fan_is_controlled_by_smc = 0;
  return 0;
 } else {
  return -EINVAL;
 }
}
