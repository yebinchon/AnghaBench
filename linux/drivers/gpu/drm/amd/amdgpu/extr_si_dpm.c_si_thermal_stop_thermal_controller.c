
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_fan; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int si_fan_ctrl_set_default_mode (struct amdgpu_device*) ;
 int si_fan_ctrl_stop_smc_fan_control (struct amdgpu_device*) ;

__attribute__((used)) static void si_thermal_stop_thermal_controller(struct amdgpu_device *adev)
{
 if (!adev->pm.no_fan) {
  si_fan_ctrl_set_default_mode(adev);
  si_fan_ctrl_stop_smc_fan_control(adev);
 }
}
