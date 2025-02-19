
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimode {int r; int h; int w; } ;
struct edid {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct detailed_timing {int dummy; } ;


 int ARRAY_SIZE (struct minimode*) ;
 struct drm_display_mode* drm_gtf_mode (struct drm_device*,int ,int ,int ,int ,int ) ;
 int drm_mode_destroy (struct drm_device*,struct drm_display_mode*) ;
 int drm_mode_fixup_1366x768 (struct drm_display_mode*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct minimode* extra_modes ;
 int mode_in_range (struct drm_display_mode*,struct edid*,struct detailed_timing*) ;
 int valid_inferred_mode (struct drm_connector*,struct drm_display_mode*) ;

__attribute__((used)) static int
drm_gtf_modes_for_range(struct drm_connector *connector, struct edid *edid,
   struct detailed_timing *timing)
{
 int i, modes = 0;
 struct drm_display_mode *newmode;
 struct drm_device *dev = connector->dev;

 for (i = 0; i < ARRAY_SIZE(extra_modes); i++) {
  const struct minimode *m = &extra_modes[i];
  newmode = drm_gtf_mode(dev, m->w, m->h, m->r, 0, 0);
  if (!newmode)
   return modes;

  drm_mode_fixup_1366x768(newmode);
  if (!mode_in_range(newmode, edid, timing) ||
      !valid_inferred_mode(connector, newmode)) {
   drm_mode_destroy(dev, newmode);
   continue;
  }

  drm_mode_probed_add(connector, newmode);
  modes++;
 }

 return modes;
}
