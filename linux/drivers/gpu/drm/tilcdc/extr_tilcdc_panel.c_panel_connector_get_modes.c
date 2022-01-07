
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct panel_connector {TYPE_1__* mod; } ;
struct drm_display_mode {int type; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
struct display_timings {int num_timings; int native_mode; } ;
struct TYPE_2__ {struct display_timings* timings; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int drm_display_mode_from_videomode (struct videomode*,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct panel_connector* to_panel_connector (struct drm_connector*) ;
 scalar_t__ videomode_from_timings (struct display_timings*,struct videomode*,int) ;

__attribute__((used)) static int panel_connector_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct panel_connector *panel_connector = to_panel_connector(connector);
 struct display_timings *timings = panel_connector->mod->timings;
 int i;

 for (i = 0; i < timings->num_timings; i++) {
  struct drm_display_mode *mode = drm_mode_create(dev);
  struct videomode vm;

  if (videomode_from_timings(timings, &vm, i))
   break;

  drm_display_mode_from_videomode(&vm, mode);

  mode->type = DRM_MODE_TYPE_DRIVER;

  if (timings->native_mode == i)
   mode->type |= DRM_MODE_TYPE_PREFERRED;

  drm_mode_set_name(mode);
  drm_mode_probed_add(connector, mode);
 }

 return i;
}
