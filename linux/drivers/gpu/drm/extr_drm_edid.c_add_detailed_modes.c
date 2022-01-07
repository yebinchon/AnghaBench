
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct edid {int features; } ;
struct drm_connector {int dummy; } ;
struct detailed_mode_closure {int preferred; int modes; int quirks; struct edid* edid; struct drm_connector* connector; } ;


 int DRM_EDID_FEATURE_PREFERRED_TIMING ;
 int do_detailed_mode ;
 int drm_for_each_detailed_block (int *,int ,struct detailed_mode_closure*) ;
 int version_greater (struct edid*,int,int) ;

__attribute__((used)) static int
add_detailed_modes(struct drm_connector *connector, struct edid *edid,
     u32 quirks)
{
 struct detailed_mode_closure closure = {
  .connector = connector,
  .edid = edid,
  .preferred = 1,
  .quirks = quirks,
 };

 if (closure.preferred && !version_greater(edid, 1, 3))
  closure.preferred =
      (edid->features & DRM_EDID_FEATURE_PREFERRED_TIMING);

 drm_for_each_detailed_block((u8 *)edid, do_detailed_mode, &closure);

 return closure.modes;
}
