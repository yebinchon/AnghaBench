
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_panel {TYPE_2__* connector; int drm; } ;
struct drm_display_mode {int type; int height_mm; int width_mm; } ;
struct TYPE_7__ {int vrefresh; int vdisplay; int hdisplay; } ;
struct TYPE_5__ {int height_mm; int width_mm; } ;
struct TYPE_6__ {TYPE_1__ display_info; } ;


 int DRM_ERROR (char*,int ,int ,int ) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 TYPE_3__ default_mode ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_3__*) ;
 int drm_mode_probed_add (TYPE_2__*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static int otm8009a_get_modes(struct drm_panel *panel)
{
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &default_mode);
 if (!mode) {
  DRM_ERROR("failed to add mode %ux%ux@%u\n",
     default_mode.hdisplay, default_mode.vdisplay,
     default_mode.vrefresh);
  return -ENOMEM;
 }

 drm_mode_set_name(mode);

 mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(panel->connector, mode);

 panel->connector->display_info.width_mm = mode->width_mm;
 panel->connector->display_info.height_mm = mode->height_mm;

 return 1;
}
