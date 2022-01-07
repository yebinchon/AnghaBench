
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int profile; size_t profile_index; int active_crtc_count; TYPE_1__* profiles; int requested_clock_mode_index; int requested_power_state_index; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct TYPE_3__ {int dpms_on_cm_idx; int dpms_on_ps_idx; int dpms_off_cm_idx; int dpms_off_ps_idx; } ;




 size_t PM_PROFILE_DEFAULT_IDX ;

 void* PM_PROFILE_HIGH_MH_IDX ;
 void* PM_PROFILE_HIGH_SH_IDX ;

 size_t PM_PROFILE_LOW_MH_IDX ;
 size_t PM_PROFILE_LOW_SH_IDX ;

 void* PM_PROFILE_MID_MH_IDX ;
 void* PM_PROFILE_MID_SH_IDX ;
 int power_supply_is_system_supplied () ;

__attribute__((used)) static void radeon_pm_update_profile(struct radeon_device *rdev)
{
 switch (rdev->pm.profile) {
 case 131:
  rdev->pm.profile_index = PM_PROFILE_DEFAULT_IDX;
  break;
 case 132:
  if (power_supply_is_system_supplied() > 0) {
   if (rdev->pm.active_crtc_count > 1)
    rdev->pm.profile_index = PM_PROFILE_HIGH_MH_IDX;
   else
    rdev->pm.profile_index = PM_PROFILE_HIGH_SH_IDX;
  } else {
   if (rdev->pm.active_crtc_count > 1)
    rdev->pm.profile_index = PM_PROFILE_MID_MH_IDX;
   else
    rdev->pm.profile_index = PM_PROFILE_MID_SH_IDX;
  }
  break;
 case 129:
  if (rdev->pm.active_crtc_count > 1)
   rdev->pm.profile_index = PM_PROFILE_LOW_MH_IDX;
  else
   rdev->pm.profile_index = PM_PROFILE_LOW_SH_IDX;
  break;
 case 128:
  if (rdev->pm.active_crtc_count > 1)
   rdev->pm.profile_index = PM_PROFILE_MID_MH_IDX;
  else
   rdev->pm.profile_index = PM_PROFILE_MID_SH_IDX;
  break;
 case 130:
  if (rdev->pm.active_crtc_count > 1)
   rdev->pm.profile_index = PM_PROFILE_HIGH_MH_IDX;
  else
   rdev->pm.profile_index = PM_PROFILE_HIGH_SH_IDX;
  break;
 }

 if (rdev->pm.active_crtc_count == 0) {
  rdev->pm.requested_power_state_index =
   rdev->pm.profiles[rdev->pm.profile_index].dpms_off_ps_idx;
  rdev->pm.requested_clock_mode_index =
   rdev->pm.profiles[rdev->pm.profile_index].dpms_off_cm_idx;
 } else {
  rdev->pm.requested_power_state_index =
   rdev->pm.profiles[rdev->pm.profile_index].dpms_on_ps_idx;
  rdev->pm.requested_clock_mode_index =
   rdev->pm.profiles[rdev->pm.profile_index].dpms_on_cm_idx;
 }
}
