
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int default_power_state_index; TYPE_2__* power_state; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_5__ {int misc; int misc2; TYPE_1__* clock_info; TYPE_1__* default_clock_mode; void* type; int flags; } ;
struct TYPE_4__ {int flags; } ;


 int ATOM_PM_MISCINFO2_SYSTEM_AC_LITE_MODE ;
 int ATOM_PM_MISCINFO_3D_ACCELERATION_EN ;
 int ATOM_PM_MISCINFO_DEFAULT_DC_STATE_ENTRY_TRUE ;
 int ATOM_PM_MISCINFO_DEFAULT_LOW_DC_STATE_ENTRY_TRUE ;
 int ATOM_PM_MISCINFO_DRIVER_DEFAULT_MODE ;
 int ATOM_PM_MISCINFO_LOAD_BALANCE_EN ;
 int ATOM_PM_MISCINFO_POWER_SAVING_MODE ;
 void* POWER_STATE_TYPE_BALANCED ;
 void* POWER_STATE_TYPE_BATTERY ;
 void* POWER_STATE_TYPE_DEFAULT ;
 void* POWER_STATE_TYPE_PERFORMANCE ;
 void* POWER_STATE_TYPE_POWERSAVE ;
 int RADEON_PM_MODE_NO_DISPLAY ;
 int RADEON_PM_STATE_SINGLE_DISPLAY_ONLY ;

__attribute__((used)) static void radeon_atombios_parse_misc_flags_1_3(struct radeon_device *rdev,
       int state_index,
       u32 misc, u32 misc2)
{
 rdev->pm.power_state[state_index].misc = misc;
 rdev->pm.power_state[state_index].misc2 = misc2;

 if (misc & ATOM_PM_MISCINFO_POWER_SAVING_MODE)
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_POWERSAVE;
 if (misc & ATOM_PM_MISCINFO_DEFAULT_DC_STATE_ENTRY_TRUE)
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BATTERY;
 if (misc & ATOM_PM_MISCINFO_DEFAULT_LOW_DC_STATE_ENTRY_TRUE)
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BATTERY;
 if (misc & ATOM_PM_MISCINFO_LOAD_BALANCE_EN)
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BALANCED;
 if (misc & ATOM_PM_MISCINFO_3D_ACCELERATION_EN) {
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_PERFORMANCE;
  rdev->pm.power_state[state_index].flags &=
   ~RADEON_PM_STATE_SINGLE_DISPLAY_ONLY;
 }
 if (misc2 & ATOM_PM_MISCINFO2_SYSTEM_AC_LITE_MODE)
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_BALANCED;
 if (misc & ATOM_PM_MISCINFO_DRIVER_DEFAULT_MODE) {
  rdev->pm.power_state[state_index].type =
   POWER_STATE_TYPE_DEFAULT;
  rdev->pm.default_power_state_index = state_index;
  rdev->pm.power_state[state_index].default_clock_mode =
   &rdev->pm.power_state[state_index].clock_info[0];
 } else if (state_index == 0) {
  rdev->pm.power_state[state_index].clock_info[0].flags |=
   RADEON_PM_MODE_NO_DISPLAY;
 }
}
