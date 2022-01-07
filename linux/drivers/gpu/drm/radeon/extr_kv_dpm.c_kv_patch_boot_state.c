
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_ps {int num_levels; int * levels; } ;
struct kv_power_info {int boot_pl; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_patch_boot_state(struct radeon_device *rdev,
    struct kv_ps *ps)
{
 struct kv_power_info *pi = kv_get_pi(rdev);

 ps->num_levels = 1;
 ps->levels[0] = pi->boot_pl;
}
