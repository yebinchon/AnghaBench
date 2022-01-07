
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct igp_power_info {int bootup_uma_clk; } ;


 struct igp_power_info* rs780_get_pi (struct radeon_device*) ;

u32 rs780_dpm_get_current_mclk(struct radeon_device *rdev)
{
 struct igp_power_info *pi = rs780_get_pi(rdev);

 return pi->bootup_uma_clk;
}
