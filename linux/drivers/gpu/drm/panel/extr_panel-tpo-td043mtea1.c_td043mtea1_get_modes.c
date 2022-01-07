
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {int bus_flags; int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;
struct TYPE_5__ {int height_mm; int width_mm; } ;


 int DRM_BUS_FLAG_DE_HIGH ;
 int DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE ;
 int DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE ;
 int ENOMEM ;
 struct drm_display_mode* drm_mode_duplicate (int ,TYPE_2__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 TYPE_2__ td043mtea1_mode ;

__attribute__((used)) static int td043mtea1_get_modes(struct drm_panel *panel)
{
 struct drm_connector *connector = panel->connector;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(panel->drm, &td043mtea1_mode);
 if (!mode)
  return -ENOMEM;

 drm_mode_set_name(mode);
 drm_mode_probed_add(connector, mode);

 connector->display_info.width_mm = td043mtea1_mode.width_mm;
 connector->display_info.height_mm = td043mtea1_mode.height_mm;






 connector->display_info.bus_flags = DRM_BUS_FLAG_DE_HIGH
       | DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE
       | DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE;

 return 1;
}
