
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; } ;


 int DRM_DEBUG_KMS (char*) ;
 struct drm_display_mode* drm_mode_duplicate (int ,int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

int intel_dsi_get_modes(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct drm_display_mode *mode;

 DRM_DEBUG_KMS("\n");

 if (!intel_connector->panel.fixed_mode) {
  DRM_DEBUG_KMS("no fixed mode\n");
  return 0;
 }

 mode = drm_mode_duplicate(connector->dev,
      intel_connector->panel.fixed_mode);
 if (!mode) {
  DRM_DEBUG_KMS("drm_mode_duplicate failed\n");
  return 0;
 }

 drm_mode_probed_add(connector, mode);
 return 1;
}
