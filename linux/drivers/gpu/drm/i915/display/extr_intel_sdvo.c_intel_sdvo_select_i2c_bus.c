
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sdvo_device_mapping {int i2c_pin; scalar_t__ initialized; } ;
struct intel_sdvo {scalar_t__ port; int i2c; } ;
struct TYPE_2__ {struct sdvo_device_mapping* sdvo_mappings; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;


 int GMBUS_PIN_DPB ;
 scalar_t__ PORT_B ;
 int intel_gmbus_force_bit (int ,int) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 scalar_t__ intel_gmbus_is_valid_pin (struct drm_i915_private*,int ) ;

__attribute__((used)) static void
intel_sdvo_select_i2c_bus(struct drm_i915_private *dev_priv,
     struct intel_sdvo *sdvo)
{
 struct sdvo_device_mapping *mapping;
 u8 pin;

 if (sdvo->port == PORT_B)
  mapping = &dev_priv->vbt.sdvo_mappings[0];
 else
  mapping = &dev_priv->vbt.sdvo_mappings[1];

 if (mapping->initialized &&
     intel_gmbus_is_valid_pin(dev_priv, mapping->i2c_pin))
  pin = mapping->i2c_pin;
 else
  pin = GMBUS_PIN_DPB;

 sdvo->i2c = intel_gmbus_get_adapter(dev_priv, pin);






 intel_gmbus_force_bit(sdvo->i2c, 1);
}
