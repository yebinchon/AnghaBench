
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_power_info {scalar_t__ voltage_drop_in_dce; } ;
struct radeon_device {int dummy; } ;


 int trinity_add_dccac_value (struct radeon_device*) ;
 int trinity_dce_enable_voltage_adjustment (struct radeon_device*,int) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

void trinity_dpm_display_configuration_changed(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 if (pi->voltage_drop_in_dce)
  trinity_dce_enable_voltage_adjustment(rdev, 1);
 trinity_add_dccac_value(rdev);
}
