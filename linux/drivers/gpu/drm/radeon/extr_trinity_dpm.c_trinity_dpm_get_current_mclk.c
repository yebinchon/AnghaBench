
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bootup_uma_clk; } ;
struct trinity_power_info {TYPE_1__ sys_info; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

u32 trinity_dpm_get_current_mclk(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 return pi->sys_info.bootup_uma_clk;
}
