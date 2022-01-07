
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {scalar_t__ status; int name; TYPE_1__ base; } ;
typedef int intel_wakeref_t ;
typedef enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ connector_status_connected ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 int intel_aux_power_domain (struct intel_digital_port*) ;
 int intel_display_power_get (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int,int ) ;
 int intel_dp_set_edid (struct intel_dp*) ;
 int intel_dp_unset_edid (struct intel_dp*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
intel_dp_force(struct drm_connector *connector)
{
 struct intel_dp *intel_dp = intel_attached_dp(connector);
 struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 struct intel_encoder *intel_encoder = &dig_port->base;
 struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
 enum intel_display_power_domain aux_domain =
  intel_aux_power_domain(dig_port);
 intel_wakeref_t wakeref;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);
 intel_dp_unset_edid(intel_dp);

 if (connector->status != connector_status_connected)
  return;

 wakeref = intel_display_power_get(dev_priv, aux_domain);

 intel_dp_set_edid(intel_dp);

 intel_display_power_put(dev_priv, aux_domain, wakeref);
}
