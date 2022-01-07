
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dbi_dev {int mode; } ;
struct drm_display_mode {char* name; int height_mm; scalar_t__ width_mm; int type; } ;
struct TYPE_2__ {int height_mm; scalar_t__ width_mm; } ;
struct drm_connector {TYPE_1__ display_info; int dev; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_mode_set_name (struct drm_display_mode*) ;
 struct mipi_dbi_dev* drm_to_mipi_dbi_dev (int ) ;

__attribute__((used)) static int mipi_dbi_connector_get_modes(struct drm_connector *connector)
{
 struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(connector->dev);
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(connector->dev, &dbidev->mode);
 if (!mode) {
  DRM_ERROR("Failed to duplicate mode\n");
  return 0;
 }

 if (mode->name[0] == '\0')
  drm_mode_set_name(mode);

 mode->type |= DRM_MODE_TYPE_PREFERRED;
 drm_mode_probed_add(connector, mode);

 if (mode->width_mm) {
  connector->display_info.width_mm = mode->width_mm;
  connector->display_info.height_mm = mode->height_mm;
 }

 return 1;
}
