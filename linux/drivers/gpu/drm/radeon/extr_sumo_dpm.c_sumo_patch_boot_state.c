
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sumo_ps {int num_levels; int * levels; scalar_t__ flags; } ;
struct sumo_power_info {int boot_pl; } ;
struct radeon_device {int dummy; } ;


 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;

__attribute__((used)) static void sumo_patch_boot_state(struct radeon_device *rdev,
      struct sumo_ps *ps)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);

 ps->num_levels = 1;
 ps->flags = 0;
 ps->levels[0] = pi->boot_pl;
}
