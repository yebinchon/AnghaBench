
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; struct edid* detect_edid; } ;
struct edid {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; } ;


 struct drm_display_mode* drm_mode_duplicate (int ,scalar_t__) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int intel_attached_dp (struct drm_connector*) ;
 int intel_connector_update_modes (struct drm_connector*,struct edid*) ;
 scalar_t__ intel_dp_is_edp (int ) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_dp_get_modes(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct edid *edid;

 edid = intel_connector->detect_edid;
 if (edid) {
  int ret = intel_connector_update_modes(connector, edid);
  if (ret)
   return ret;
 }


 if (intel_dp_is_edp(intel_attached_dp(connector)) &&
     intel_connector->panel.fixed_mode) {
  struct drm_display_mode *mode;

  mode = drm_mode_duplicate(connector->dev,
       intel_connector->panel.fixed_mode);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   return 1;
  }
 }

 return 0;
}
