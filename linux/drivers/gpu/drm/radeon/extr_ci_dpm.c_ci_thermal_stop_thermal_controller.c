
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_fan; } ;
struct radeon_device {TYPE_1__ pm; } ;


 int ci_fan_ctrl_set_default_mode (struct radeon_device*) ;

__attribute__((used)) static void ci_thermal_stop_thermal_controller(struct radeon_device *rdev)
{
 if (!rdev->pm.no_fan)
  ci_fan_ctrl_set_default_mode(rdev);
}
