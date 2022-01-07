
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_ps {int num_levels; int * levels; scalar_t__ bapm_flags; scalar_t__ nbps_flags; } ;
struct trinity_power_info {int boot_pl; } ;
struct radeon_device {int dummy; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;

__attribute__((used)) static void trinity_patch_boot_state(struct radeon_device *rdev,
         struct trinity_ps *ps)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 ps->num_levels = 1;
 ps->nbps_flags = 0;
 ps->bapm_flags = 0;
 ps->levels[0] = pi->boot_pl;
}
