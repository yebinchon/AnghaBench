
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct panel_simple {TYPE_2__* desc; TYPE_1__ base; } ;
struct drm_display_mode {int type; int vrefresh; int vdisplay; int hdisplay; } ;
struct drm_device {int dev; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {unsigned int num_modes; struct drm_display_mode* modes; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int dev_err (int ,char*,int ,int ,int ) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,struct drm_display_mode const*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static unsigned int panel_simple_get_display_modes(struct panel_simple *panel)
{
 struct drm_connector *connector = panel->base.connector;
 struct drm_device *drm = panel->base.drm;
 struct drm_display_mode *mode;
 unsigned int i, num = 0;

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

 return num;
}
