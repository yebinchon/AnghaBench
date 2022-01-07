
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; int edid; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int IS_ERR_OR_NULL (int ) ;
 int drm_add_edid_modes (struct drm_connector*,int ) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_lvds_get_modes(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *mode;


 if (!IS_ERR_OR_NULL(intel_connector->edid))
  return drm_add_edid_modes(connector, intel_connector->edid);

 mode = drm_mode_duplicate(dev, intel_connector->panel.fixed_mode);
 if (mode == ((void*)0))
  return 0;

 drm_mode_probed_add(connector, mode);
 return 1;
}
