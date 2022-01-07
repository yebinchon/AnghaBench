
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ps {int class; int caps; int class2; } ;
struct TYPE_7__ {int new_active_crtc_count; int num_ps; struct amdgpu_ps* uvd_ps; struct amdgpu_ps* boot_ps; struct amdgpu_ps* ps; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_2__ powerplay; } ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_5__ {scalar_t__ vblank_too_short; } ;


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
 scalar_t__ amdgpu_dpm_vblank_too_short (struct amdgpu_device*) ;

__attribute__((used)) static struct amdgpu_ps *amdgpu_dpm_pick_power_state(struct amdgpu_device *adev,
           enum amd_pm_state_type dpm_state)
{
 int i;
 struct amdgpu_ps *ps;
 u32 ui_class;
 bool single_display = (adev->pm.dpm.new_active_crtc_count < 2) ?
  1 : 0;


 if (single_display && adev->powerplay.pp_funcs->vblank_too_short) {
  if (amdgpu_dpm_vblank_too_short(adev))
   single_display = 0;
 }




 if (dpm_state == 128)
  dpm_state = 138;

 if (dpm_state == 140)
  dpm_state = 128;

restart_search:

 for (i = 0; i < adev->pm.dpm.num_ps; i++) {
  ps = &adev->pm.dpm.ps[i];
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
   if (adev->pm.dpm.uvd_ps)
    return adev->pm.dpm.uvd_ps;
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
   return adev->pm.dpm.boot_ps;
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
  if (adev->pm.dpm.uvd_ps) {
   return adev->pm.dpm.uvd_ps;
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
