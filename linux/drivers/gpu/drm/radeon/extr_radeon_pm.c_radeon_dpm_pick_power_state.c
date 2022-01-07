
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ps {int class; int caps; int class2; } ;
struct TYPE_3__ {int num_ps; struct radeon_ps* uvd_ps; struct radeon_ps* boot_ps; struct radeon_ps* ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef enum radeon_pm_state_type { ____Placeholder_radeon_pm_state_type } radeon_pm_state_type ;


 int ATOM_PPLIB_CLASSIFICATION2_MVC ;
 int ATOM_PPLIB_CLASSIFICATION2_ULV ;
 int ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE ;
 int ATOM_PPLIB_CLASSIFICATION_ACPI ;
 int ATOM_PPLIB_CLASSIFICATION_HD2STATE ;
 int ATOM_PPLIB_CLASSIFICATION_HDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_SDSTATE ;
 int ATOM_PPLIB_CLASSIFICATION_THERMAL ;
 int ATOM_PPLIB_CLASSIFICATION_UI_BALANCED ;
 int ATOM_PPLIB_CLASSIFICATION_UI_BATTERY ;
 int ATOM_PPLIB_CLASSIFICATION_UI_MASK ;
 int ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE ;
 int ATOM_PPLIB_SINGLE_DISPLAY_ONLY ;
 int radeon_dpm_single_display (struct radeon_device*) ;

__attribute__((used)) static struct radeon_ps *radeon_dpm_pick_power_state(struct radeon_device *rdev,
           enum radeon_pm_state_type dpm_state)
{
 int i;
 struct radeon_ps *ps;
 u32 ui_class;
 bool single_display = radeon_dpm_single_display(rdev);




 if (dpm_state == 128)
  dpm_state = 138;

 if (dpm_state == 140)
  dpm_state = 128;

restart_search:

 for (i = 0; i < rdev->pm.dpm.num_ps; i++) {
  ps = &rdev->pm.dpm.ps[i];
  ui_class = ps->class & ATOM_PPLIB_CLASSIFICATION_UI_MASK;
  switch (dpm_state) {

  case 139:
   if (ui_class == ATOM_PPLIB_CLASSIFICATION_UI_BATTERY) {
    if (ps->caps & ATOM_PPLIB_SINGLE_DISPLAY_ONLY) {
     if (single_display)
      return ps;
    } else
     return ps;
   }
   break;
  case 140:
   if (ui_class == ATOM_PPLIB_CLASSIFICATION_UI_BALANCED) {
    if (ps->caps & ATOM_PPLIB_SINGLE_DISPLAY_ONLY) {
     if (single_display)
      return ps;
    } else
     return ps;
   }
   break;
  case 128:
   if (ui_class == ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE) {
    if (ps->caps & ATOM_PPLIB_SINGLE_DISPLAY_ONLY) {
     if (single_display)
      return ps;
    } else
     return ps;
   }
   break;

  case 133:
   if (rdev->pm.dpm.uvd_ps)
    return rdev->pm.dpm.uvd_ps;
   else
    break;
  case 129:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_SDSTATE)
    return ps;
   break;
  case 132:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_HDSTATE)
    return ps;
   break;
  case 131:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_HD2STATE)
    return ps;
   break;
  case 130:
   if (ps->class2 & ATOM_PPLIB_CLASSIFICATION2_MVC)
    return ps;
   break;
  case 136:
   return rdev->pm.dpm.boot_ps;
  case 135:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_THERMAL)
    return ps;
   break;
  case 137:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_ACPI)
    return ps;
   break;
  case 134:
   if (ps->class2 & ATOM_PPLIB_CLASSIFICATION2_ULV)
    return ps;
   break;
  case 138:
   if (ps->class & ATOM_PPLIB_CLASSIFICATION_3DPERFORMANCE)
    return ps;
   break;
  default:
   break;
  }
 }

 switch (dpm_state) {
 case 129:
  dpm_state = 132;
  goto restart_search;
 case 132:
 case 131:
 case 130:
  if (rdev->pm.dpm.uvd_ps) {
   return rdev->pm.dpm.uvd_ps;
  } else {
   dpm_state = 128;
   goto restart_search;
  }
 case 135:
  dpm_state = 137;
  goto restart_search;
 case 137:
  dpm_state = 139;
  goto restart_search;
 case 139:
 case 140:
 case 138:
  dpm_state = 128;
  goto restart_search;
 default:
  break;
 }

 return ((void*)0);
}
