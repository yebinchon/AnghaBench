
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_max_fan_pwm; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct ci_power_info {int fan_is_controlled_by_smc; scalar_t__ caps_od_fuzzy_fan_control_support; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int FAN_CONTROL_FUZZY ;
 int FAN_CONTROL_TABLE ;
 int PPSMC_MSG_SetFanPwmMax ;
 scalar_t__ PPSMC_Result_OK ;
 int PPSMC_StartFanControl ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int ) ;

__attribute__((used)) static int ci_fan_ctrl_start_smc_fan_control(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result ret;

 if (pi->caps_od_fuzzy_fan_control_support) {
  ret = ci_send_msg_to_smc_with_parameter(rdev,
       PPSMC_StartFanControl,
       FAN_CONTROL_FUZZY);
  if (ret != PPSMC_Result_OK)
   return -EINVAL;
  ret = ci_send_msg_to_smc_with_parameter(rdev,
       PPSMC_MSG_SetFanPwmMax,
       rdev->pm.dpm.fan.default_max_fan_pwm);
  if (ret != PPSMC_Result_OK)
   return -EINVAL;
 } else {
  ret = ci_send_msg_to_smc_with_parameter(rdev,
       PPSMC_StartFanControl,
       FAN_CONTROL_TABLE);
  if (ret != PPSMC_Result_OK)
   return -EINVAL;
 }

 pi->fan_is_controlled_by_smc = 1;
 return 0;
}
