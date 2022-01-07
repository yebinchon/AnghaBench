
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int vrefresh; int vdisplay; int hdisplay; } ;


 int DRM_ERROR (char*,int ,int ,int ) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int ENOMEM ;
 TYPE_1__ default_mode ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_1__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;

__attribute__((used)) static int s6e63m0_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
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
 drm_mode_probed_add(connector, mode);

 return 1;
}
