
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jdi_panel {TYPE_2__* dsi; } ;
struct drm_panel {TYPE_3__* connector; int drm; } ;
struct drm_display_mode {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_6__ {int width_mm; int height_mm; } ;
struct TYPE_8__ {TYPE_1__ display_info; } ;
struct TYPE_7__ {struct device dev; } ;


 int ENOMEM ;
 TYPE_4__ default_mode ;
 int dev_err (struct device*,char*,int ,int ,int ) ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_4__*) ;
 int drm_mode_probed_add (TYPE_3__*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct jdi_panel* to_jdi_panel (struct drm_panel*) ;

__attribute__((used)) static int jdi_panel_get_modes(struct drm_panel *panel)
{
 struct drm_display_mode *mode;
 struct jdi_panel *jdi = to_jdi_panel(panel);
 struct device *dev = &jdi->dsi->dev;

 mode = drm_mode_duplicate(panel->drm, &default_mode);
 if (!mode) {
  dev_err(dev, "failed to add mode %ux%ux@%u\n",
   default_mode.hdisplay, default_mode.vdisplay,
   default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 drm_mode_probed_add(panel->connector, mode);

 panel->connector->display_info.width_mm = 95;
 panel->connector->display_info.height_mm = 151;

 return 1;
}
