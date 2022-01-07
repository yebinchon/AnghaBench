
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dynpm_can_upclock; int dynpm_can_downclock; int num_power_states; int dynpm_planned_action; int requested_power_state_index; size_t requested_clock_mode_index; int current_power_state_index; int active_crtc_count; int default_power_state_index; size_t current_clock_mode_index; TYPE_2__* power_state; } ;
struct radeon_device {int flags; scalar_t__ family; TYPE_3__ pm; } ;
struct TYPE_5__ {int flags; scalar_t__ type; int pcie_lanes; TYPE_1__* clock_info; int num_clock_modes; } ;
struct TYPE_4__ {int flags; int mclk; int sclk; } ;


 scalar_t__ CHIP_R600 ;
 int DRM_DEBUG_DRIVER (char*,int ,int ,int ) ;
 int DRM_ERROR (char*) ;





 scalar_t__ POWER_STATE_TYPE_BATTERY ;
 scalar_t__ POWER_STATE_TYPE_PERFORMANCE ;
 int RADEON_IS_IGP ;
 int RADEON_PM_MODE_NO_DISPLAY ;
 int RADEON_PM_STATE_SINGLE_DISPLAY_ONLY ;

void r600_pm_get_dynpm_state(struct radeon_device *rdev)
{
 int i;

 rdev->pm.dynpm_can_upclock = 1;
 rdev->pm.dynpm_can_downclock = 1;


 if ((rdev->flags & RADEON_IS_IGP) || (rdev->family == CHIP_R600)) {
  int min_power_state_index = 0;

  if (rdev->pm.num_power_states > 2)
   min_power_state_index = 1;

  switch (rdev->pm.dynpm_planned_action) {
  case 130:
   rdev->pm.requested_power_state_index = min_power_state_index;
   rdev->pm.requested_clock_mode_index = 0;
   rdev->pm.dynpm_can_downclock = 0;
   break;
  case 131:
   if (rdev->pm.current_power_state_index == min_power_state_index) {
    rdev->pm.requested_power_state_index = rdev->pm.current_power_state_index;
    rdev->pm.dynpm_can_downclock = 0;
   } else {
    if (rdev->pm.active_crtc_count > 1) {
     for (i = 0; i < rdev->pm.num_power_states; i++) {
      if (rdev->pm.power_state[i].flags & RADEON_PM_STATE_SINGLE_DISPLAY_ONLY)
       continue;
      else if (i >= rdev->pm.current_power_state_index) {
       rdev->pm.requested_power_state_index =
        rdev->pm.current_power_state_index;
       break;
      } else {
       rdev->pm.requested_power_state_index = i;
       break;
      }
     }
    } else {
     if (rdev->pm.current_power_state_index == 0)
      rdev->pm.requested_power_state_index =
       rdev->pm.num_power_states - 1;
     else
      rdev->pm.requested_power_state_index =
       rdev->pm.current_power_state_index - 1;
    }
   }
   rdev->pm.requested_clock_mode_index = 0;

   if ((rdev->pm.active_crtc_count > 0) &&
       (rdev->pm.power_state[rdev->pm.requested_power_state_index].
        clock_info[rdev->pm.requested_clock_mode_index].flags &
        RADEON_PM_MODE_NO_DISPLAY)) {
    rdev->pm.requested_power_state_index++;
   }
   break;
  case 128:
   if (rdev->pm.current_power_state_index == (rdev->pm.num_power_states - 1)) {
    rdev->pm.requested_power_state_index = rdev->pm.current_power_state_index;
    rdev->pm.dynpm_can_upclock = 0;
   } else {
    if (rdev->pm.active_crtc_count > 1) {
     for (i = (rdev->pm.num_power_states - 1); i >= 0; i--) {
      if (rdev->pm.power_state[i].flags & RADEON_PM_STATE_SINGLE_DISPLAY_ONLY)
       continue;
      else if (i <= rdev->pm.current_power_state_index) {
       rdev->pm.requested_power_state_index =
        rdev->pm.current_power_state_index;
       break;
      } else {
       rdev->pm.requested_power_state_index = i;
       break;
      }
     }
    } else
     rdev->pm.requested_power_state_index =
      rdev->pm.current_power_state_index + 1;
   }
   rdev->pm.requested_clock_mode_index = 0;
   break;
  case 132:
   rdev->pm.requested_power_state_index = rdev->pm.default_power_state_index;
   rdev->pm.requested_clock_mode_index = 0;
   rdev->pm.dynpm_can_upclock = 0;
   break;
  case 129:
  default:
   DRM_ERROR("Requested mode for not defined action\n");
   return;
  }
 } else {



  if (rdev->pm.active_crtc_count > 1) {
   rdev->pm.requested_power_state_index = -1;

   for (i = 1; i < rdev->pm.num_power_states; i++) {
    if (rdev->pm.power_state[i].flags & RADEON_PM_STATE_SINGLE_DISPLAY_ONLY)
     continue;
    else if ((rdev->pm.power_state[i].type == POWER_STATE_TYPE_PERFORMANCE) ||
      (rdev->pm.power_state[i].type == POWER_STATE_TYPE_BATTERY)) {
     rdev->pm.requested_power_state_index = i;
     break;
    }
   }

   if (rdev->pm.requested_power_state_index == -1)
    rdev->pm.requested_power_state_index = 0;
  } else
   rdev->pm.requested_power_state_index = 1;

  switch (rdev->pm.dynpm_planned_action) {
  case 130:
   rdev->pm.requested_clock_mode_index = 0;
   rdev->pm.dynpm_can_downclock = 0;
   break;
  case 131:
   if (rdev->pm.requested_power_state_index == rdev->pm.current_power_state_index) {
    if (rdev->pm.current_clock_mode_index == 0) {
     rdev->pm.requested_clock_mode_index = 0;
     rdev->pm.dynpm_can_downclock = 0;
    } else
     rdev->pm.requested_clock_mode_index =
      rdev->pm.current_clock_mode_index - 1;
   } else {
    rdev->pm.requested_clock_mode_index = 0;
    rdev->pm.dynpm_can_downclock = 0;
   }

   if ((rdev->pm.active_crtc_count > 0) &&
       (rdev->pm.power_state[rdev->pm.requested_power_state_index].
        clock_info[rdev->pm.requested_clock_mode_index].flags &
        RADEON_PM_MODE_NO_DISPLAY)) {
    rdev->pm.requested_clock_mode_index++;
   }
   break;
  case 128:
   if (rdev->pm.requested_power_state_index == rdev->pm.current_power_state_index) {
    if (rdev->pm.current_clock_mode_index ==
        (rdev->pm.power_state[rdev->pm.requested_power_state_index].num_clock_modes - 1)) {
     rdev->pm.requested_clock_mode_index = rdev->pm.current_clock_mode_index;
     rdev->pm.dynpm_can_upclock = 0;
    } else
     rdev->pm.requested_clock_mode_index =
      rdev->pm.current_clock_mode_index + 1;
   } else {
    rdev->pm.requested_clock_mode_index =
     rdev->pm.power_state[rdev->pm.requested_power_state_index].num_clock_modes - 1;
    rdev->pm.dynpm_can_upclock = 0;
   }
   break;
  case 132:
   rdev->pm.requested_power_state_index = rdev->pm.default_power_state_index;
   rdev->pm.requested_clock_mode_index = 0;
   rdev->pm.dynpm_can_upclock = 0;
   break;
  case 129:
  default:
   DRM_ERROR("Requested mode for not defined action\n");
   return;
  }
 }

 DRM_DEBUG_DRIVER("Requested: e: %d m: %d p: %d\n",
    rdev->pm.power_state[rdev->pm.requested_power_state_index].
    clock_info[rdev->pm.requested_clock_mode_index].sclk,
    rdev->pm.power_state[rdev->pm.requested_power_state_index].
    clock_info[rdev->pm.requested_clock_mode_index].mclk,
    rdev->pm.power_state[rdev->pm.requested_power_state_index].
    pcie_lanes);
}
