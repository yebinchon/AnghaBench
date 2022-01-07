
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_hdmi {int cec_notifier; } ;
struct intel_encoder {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; int dev; } ;
typedef int intel_wakeref_t ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_4__ {struct intel_encoder base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int POWER_DOMAIN_GMBUS ;
 int cec_notifier_phys_addr_invalidate (int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 TYPE_2__* hdmi_to_dig_port (struct intel_hdmi*) ;
 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 int intel_digital_port_connected (struct intel_encoder*) ;
 int intel_display_power_flush_work (struct drm_i915_private*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 scalar_t__ intel_hdmi_set_edid (struct drm_connector*) ;
 int intel_hdmi_unset_edid (struct drm_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static enum drm_connector_status
intel_hdmi_detect(struct drm_connector *connector, bool force)
{
 enum drm_connector_status status = connector_status_disconnected;
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 intel_wakeref_t wakeref;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);

 wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);

 if (INTEL_GEN(dev_priv) >= 11 &&
     !intel_digital_port_connected(encoder))
  goto out;

 intel_hdmi_unset_edid(connector);

 if (intel_hdmi_set_edid(connector))
  status = connector_status_connected;

out:
 intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);

 if (status != connector_status_connected)
  cec_notifier_phys_addr_invalidate(intel_hdmi->cec_notifier);





 intel_display_power_flush_work(dev_priv);

 return status;
}
