
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int sumo_program_sstp (struct radeon_device*) ;
 int sumo_take_smu_control (struct radeon_device*,int) ;
 int trinity_acquire_mutex (struct radeon_device*) ;
 int trinity_get_min_sclk_divider (struct radeon_device*) ;
 int trinity_release_mutex (struct radeon_device*) ;

void trinity_dpm_setup_asic(struct radeon_device *rdev)
{
 trinity_acquire_mutex(rdev);
 sumo_program_sstp(rdev);
 sumo_take_smu_control(rdev, 1);
 trinity_get_min_sclk_divider(rdev);
 trinity_release_mutex(rdev);
}
