
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dev; int probed_modes; } ;
struct TYPE_3__ {struct drm_display_mode* fixed_mode; } ;
struct TYPE_4__ {TYPE_1__ panel; } ;


 int GMBUS_PIN_DPC ;
 struct drm_display_mode* drm_mode_duplicate (int ,struct drm_display_mode const*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int intel_ddc_get_modes (struct drm_connector*,int ) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int list_empty (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_2__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_dvo_get_modes(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 const struct drm_display_mode *fixed_mode =
  to_intel_connector(connector)->panel.fixed_mode;







 intel_ddc_get_modes(connector,
       intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPC));
 if (!list_empty(&connector->probed_modes))
  return 1;

 if (fixed_mode) {
  struct drm_display_mode *mode;
  mode = drm_mode_duplicate(connector->dev, fixed_mode);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   return 1;
  }
 }

 return 0;
}
