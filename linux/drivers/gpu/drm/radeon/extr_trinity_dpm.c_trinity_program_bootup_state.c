
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trinity_power_info {int boot_pl; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_power_level_enable_disable (struct radeon_device*,int,int) ;
 int trinity_program_power_level (struct radeon_device*,int *,int ) ;

__attribute__((used)) static void trinity_program_bootup_state(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 u32 i;

 trinity_program_power_level(rdev, &pi->boot_pl, 0);
 trinity_power_level_enable_disable(rdev, 0, 1);

 for (i = 1; i < 8; i++)
  trinity_power_level_enable_disable(rdev, i, 0);
}
