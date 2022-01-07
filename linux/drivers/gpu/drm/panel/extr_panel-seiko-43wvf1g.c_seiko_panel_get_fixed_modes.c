
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct TYPE_7__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct seiko_panel {TYPE_5__* desc; TYPE_1__ base; } ;
struct drm_display_mode {int type; int vrefresh; int vdisplay; int hdisplay; } ;
struct drm_device {int dev; } ;
struct TYPE_12__ {int bus_flags; int height_mm; int width_mm; int bpc; } ;
struct drm_connector {TYPE_6__ display_info; } ;
struct TYPE_9__ {int typ; } ;
struct TYPE_8__ {int typ; } ;
struct display_timing {TYPE_3__ vactive; TYPE_2__ hactive; } ;
struct TYPE_10__ {int height; int width; } ;
struct TYPE_11__ {unsigned int num_timings; unsigned int num_modes; int bus_flags; int bus_format; TYPE_4__ size; int bpc; struct drm_display_mode* modes; struct display_timing* timings; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int dev_err (int ,char*,int ,int ,...) ;
 int drm_display_info_set_bus_formats (TYPE_6__*,int *,int) ;
 int drm_display_mode_from_videomode (struct videomode*,struct drm_display_mode*) ;
 struct drm_display_mode* drm_mode_create (struct drm_device*) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode const*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 int videomode_from_timing (struct display_timing const*,struct videomode*) ;

__attribute__((used)) static int seiko_panel_get_fixed_modes(struct seiko_panel *panel)
{
 struct drm_connector *connector = panel->base.connector;
 struct drm_device *drm = panel->base.drm;
 struct drm_display_mode *mode;
 unsigned int i, num = 0;

 if (!panel->desc)
  return 0;

 for (i = 0; i < panel->desc->num_timings; i++) {
  const struct display_timing *dt = &panel->desc->timings[i];
  struct videomode vm;

  videomode_from_timing(dt, &vm);
  mode = drm_mode_create(drm);
  if (!mode) {
   dev_err(drm->dev, "failed to add mode %ux%u\n",
    dt->hactive.typ, dt->vactive.typ);
   continue;
  }

  drm_display_mode_from_videomode(&vm, mode);

  mode->type |= DRM_MODE_TYPE_DRIVER;

  if (panel->desc->num_timings == 1)
   mode->type |= DRM_MODE_TYPE_PREFERRED;

  drm_mode_probed_add(connector, mode);
  num++;
 }

 for (i = 0; i < panel->desc->num_modes; i++) {
  const struct drm_display_mode *m = &panel->desc->modes[i];

  mode = drm_mode_duplicate(drm, m);
  if (!mode) {
   dev_err(drm->dev, "failed to add mode %ux%u@%u\n",
    m->hdisplay, m->vdisplay, m->vrefresh);
   continue;
  }

  mode->type |= DRM_MODE_TYPE_DRIVER;

  if (panel->desc->num_modes == 1)
   mode->type |= DRM_MODE_TYPE_PREFERRED;

  drm_mode_set_name(mode);

  drm_mode_probed_add(connector, mode);
  num++;
 }

 connector->display_info.bpc = panel->desc->bpc;
 connector->display_info.width_mm = panel->desc->size.width;
 connector->display_info.height_mm = panel->desc->size.height;
 if (panel->desc->bus_format)
  drm_display_info_set_bus_formats(&connector->display_info,
       &panel->desc->bus_format, 1);
 connector->display_info.bus_flags = panel->desc->bus_flags;

 return num;
}
