
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int rs780_get_pm_mode_parameters (struct radeon_device*) ;
 int rs780_program_at (struct radeon_device*) ;

void rs780_dpm_display_configuration_changed(struct radeon_device *rdev)
{
 rs780_get_pm_mode_parameters(rdev);
 rs780_program_at(rdev);
}
