
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ucode_fan_control; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int FDO_PWM_MODE_STATIC ;
 int si_fan_ctrl_set_static_mode (struct amdgpu_device*,int ) ;
 int si_fan_ctrl_start_smc_fan_control (struct amdgpu_device*) ;

__attribute__((used)) static void si_thermal_start_smc_fan_control(struct amdgpu_device *adev)
{
 if (adev->pm.dpm.fan.ucode_fan_control) {
  si_fan_ctrl_start_smc_fan_control(adev);
  si_fan_ctrl_set_static_mode(adev, FDO_PWM_MODE_STATIC);
 }
}
