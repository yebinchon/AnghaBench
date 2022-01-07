
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int cec_notifier; int has_hdmi_sink; int has_audio; int ddc_bus; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int input; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int dev; } ;
typedef int intel_wakeref_t ;
struct TYPE_2__ {struct edid* detect_edid; } ;


 int DRM_DEBUG_KMS (char*) ;
 int DRM_EDID_INPUT_DIGITAL ;
 int POWER_DOMAIN_GMBUS ;
 int cec_notifier_set_phys_addr_from_edid (int ,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 int intel_gmbus_force_bit (struct i2c_adapter*,int) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int intel_gmbus_is_forced_bit (struct i2c_adapter*) ;
 int intel_hdmi_dp_dual_mode_detect (struct drm_connector*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_1__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static bool
intel_hdmi_set_edid(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 intel_wakeref_t wakeref;
 struct edid *edid;
 bool connected = 0;
 struct i2c_adapter *i2c;

 wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);

 i2c = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);

 edid = drm_get_edid(connector, i2c);

 if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
  DRM_DEBUG_KMS("HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
  intel_gmbus_force_bit(i2c, 1);
  edid = drm_get_edid(connector, i2c);
  intel_gmbus_force_bit(i2c, 0);
 }

 intel_hdmi_dp_dual_mode_detect(connector, edid != ((void*)0));

 intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);

 to_intel_connector(connector)->detect_edid = edid;
 if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
  intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
  intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);

  connected = 1;
 }

 cec_notifier_set_phys_addr_from_edid(intel_hdmi->cec_notifier, edid);

 return connected;
}
