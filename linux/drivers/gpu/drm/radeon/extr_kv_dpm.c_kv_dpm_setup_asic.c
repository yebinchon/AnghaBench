
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int kv_init_powergate_state (struct radeon_device*) ;
 int kv_init_sclk_t (struct radeon_device*) ;
 int sumo_take_smu_control (struct radeon_device*,int) ;

void kv_dpm_setup_asic(struct radeon_device *rdev)
{
 sumo_take_smu_control(rdev, 1);
 kv_init_powergate_state(rdev);
 kv_init_sclk_t(rdev);
}
