
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ ucode_fan_control; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;


 int ci_fan_ctrl_set_default_mode (struct radeon_device*) ;
 int ci_fan_ctrl_set_static_mode (struct radeon_device*,scalar_t__) ;
 int ci_fan_ctrl_stop_smc_fan_control (struct radeon_device*) ;
 int ci_thermal_start_smc_fan_control (struct radeon_device*) ;

void ci_fan_ctrl_set_mode(struct radeon_device *rdev, u32 mode)
{
 if (mode) {

  if (rdev->pm.dpm.fan.ucode_fan_control)
   ci_fan_ctrl_stop_smc_fan_control(rdev);
  ci_fan_ctrl_set_static_mode(rdev, mode);
 } else {

  if (rdev->pm.dpm.fan.ucode_fan_control)
   ci_thermal_start_smc_fan_control(rdev);
  else
   ci_fan_ctrl_set_default_mode(rdev);
 }
}
