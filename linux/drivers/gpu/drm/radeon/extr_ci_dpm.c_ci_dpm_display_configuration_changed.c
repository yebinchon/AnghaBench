
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int ci_program_display_gap (struct radeon_device*) ;

void ci_dpm_display_configuration_changed(struct radeon_device *rdev)
{
 ci_program_display_gap(rdev);
}
