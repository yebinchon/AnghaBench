
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int ARRAY_SIZE (struct drm_display_mode*) ;
 struct drm_display_mode* drm_dmt_modes ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode const*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_vrefresh (struct drm_display_mode const*) ;

int drm_add_modes_noedid(struct drm_connector *connector,
   int hdisplay, int vdisplay)
{
 int i, count, num_modes = 0;
 struct drm_display_mode *mode;
 struct drm_device *dev = connector->dev;

 count = ARRAY_SIZE(drm_dmt_modes);
 if (hdisplay < 0)
  hdisplay = 0;
 if (vdisplay < 0)
  vdisplay = 0;

 for (i = 0; i < count; i++) {
  const struct drm_display_mode *ptr = &drm_dmt_modes[i];
  if (hdisplay && vdisplay) {





   if (ptr->hdisplay > hdisplay ||
     ptr->vdisplay > vdisplay)
    continue;
  }
  if (drm_mode_vrefresh(ptr) > 61)
   continue;
  mode = drm_mode_duplicate(dev, ptr);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   num_modes++;
  }
 }
 return num_modes;
}
