
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdmi {int ddc_bus; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int dev; } ;


 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static struct i2c_adapter *
intel_hdmi_get_i2c_adapter(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);

 return intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
}
