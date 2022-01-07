
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int power_domain; } ;
struct intel_crt {struct intel_encoder base; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int crt_ddc_pin; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef int intel_wakeref_t ;


 int GMBUS_PIN_DPB ;
 int IS_G4X (struct drm_i915_private*) ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;
 int intel_crt_ddc_get_modes (struct drm_connector*,struct i2c_adapter*) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static int intel_crt_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crt *crt = intel_attached_crt(connector);
 struct intel_encoder *intel_encoder = &crt->base;
 intel_wakeref_t wakeref;
 struct i2c_adapter *i2c;
 int ret;

 wakeref = intel_display_power_get(dev_priv,
       intel_encoder->power_domain);

 i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
 ret = intel_crt_ddc_get_modes(connector, i2c);
 if (ret || !IS_G4X(dev_priv))
  goto out;


 i2c = intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPB);
 ret = intel_crt_ddc_get_modes(connector, i2c);

out:
 intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);

 return ret;
}
