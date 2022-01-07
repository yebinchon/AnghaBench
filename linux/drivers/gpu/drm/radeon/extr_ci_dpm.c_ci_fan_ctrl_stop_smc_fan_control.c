
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {int fan_is_controlled_by_smc; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_StopFanControl ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_fan_ctrl_stop_smc_fan_control(struct radeon_device *rdev)
{
 PPSMC_Result ret;
 struct ci_power_info *pi = ci_get_pi(rdev);

 ret = ci_send_msg_to_smc(rdev, PPSMC_StopFanControl);
 if (ret == PPSMC_Result_OK) {
  pi->fan_is_controlled_by_smc = 0;
  return 0;
 } else
  return -EINVAL;
}
