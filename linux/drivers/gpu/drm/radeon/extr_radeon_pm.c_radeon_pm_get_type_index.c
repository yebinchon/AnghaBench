
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_power_states; int default_power_state_index; TYPE_1__* power_state; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef enum radeon_pm_state_type { ____Placeholder_radeon_pm_state_type } radeon_pm_state_type ;
struct TYPE_3__ {int type; } ;



int radeon_pm_get_type_index(struct radeon_device *rdev,
        enum radeon_pm_state_type ps_type,
        int instance)
{
 int i;
 int found_instance = -1;

 for (i = 0; i < rdev->pm.num_power_states; i++) {
  if (rdev->pm.power_state[i].type == ps_type) {
   found_instance++;
   if (found_instance == instance)
    return i;
  }
 }

 return rdev->pm.default_power_state_index;
}
