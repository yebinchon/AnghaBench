
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st7701 {TYPE_1__* dsi; TYPE_3__* desc; } ;
struct drm_panel {TYPE_4__* connector; int drm; } ;
struct drm_display_mode {int height_mm; int width_mm; int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_6__ {int height_mm; int width_mm; } ;
struct TYPE_8__ {TYPE_2__ display_info; } ;
struct TYPE_7__ {struct drm_display_mode* mode; } ;
struct TYPE_5__ {int dev; } ;


 int DRM_DEV_ERROR (int *,char*,int ,int ,int ) ;
 int ENOMEM ;
 struct drm_display_mode* drm_mode_duplicate (int ,struct drm_display_mode const*) ;
 int drm_mode_probed_add (TYPE_4__*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct st7701* panel_to_st7701 (struct drm_panel*) ;

__attribute__((used)) static int st7701_get_modes(struct drm_panel *panel)
{
 struct st7701 *st7701 = panel_to_st7701(panel);
 const struct drm_display_mode *desc_mode = st7701->desc->mode;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, desc_mode);
 if (!mode) {
  DRM_DEV_ERROR(&st7701->dsi->dev,
         "failed to add mode %ux%ux@%u\n",
         desc_mode->hdisplay, desc_mode->vdisplay,
         desc_mode->vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);
 drm_mode_probed_add(panel->connector, mode);

 panel->connector->display_info.width_mm = desc_mode->width_mm;
 panel->connector->display_info.height_mm = desc_mode->height_mm;

 return 1;
}
