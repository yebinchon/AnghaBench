
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_panel {TYPE_2__* connector; TYPE_3__* drm; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_9__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int width_mm; int height_mm; int bpc; } ;
struct TYPE_7__ {TYPE_1__ display_info; } ;


 int DRM_DEV_ERROR (int ,char*,int ,int ,int ) ;
 int ENOMEM ;
 TYPE_4__ default_mode ;
 struct drm_display_mode* drm_mode_duplicate (TYPE_3__*,TYPE_4__*) ;
 int drm_mode_probed_add (TYPE_2__*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static int kingdisplay_panel_get_modes(struct drm_panel *panel)
{
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &default_mode);
 if (!mode) {
  DRM_DEV_ERROR(panel->drm->dev, "failed to add mode %ux%ux@%u\n",
         default_mode.hdisplay, default_mode.vdisplay,
         default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 drm_mode_probed_add(panel->connector, mode);

 panel->connector->display_info.width_mm = 147;
 panel->connector->display_info.height_mm = 196;
 panel->connector->display_info.bpc = 8;

 return 1;
}
