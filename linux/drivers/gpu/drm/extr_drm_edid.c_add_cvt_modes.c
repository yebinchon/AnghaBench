
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct detailed_mode_closure {int modes; struct edid* edid; struct drm_connector* connector; } ;


 int do_cvt_mode ;
 int drm_for_each_detailed_block (int *,int ,struct detailed_mode_closure*) ;
 scalar_t__ version_greater (struct edid*,int,int) ;

__attribute__((used)) static int
add_cvt_modes(struct drm_connector *connector, struct edid *edid)
{
 struct detailed_mode_closure closure = {
  .connector = connector,
  .edid = edid,
 };

 if (version_greater(edid, 1, 2))
  drm_for_each_detailed_block((u8 *)edid, do_cvt_mode, &closure);



 return closure.modes;
}
