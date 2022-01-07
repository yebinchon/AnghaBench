
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int adapter; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; } ;


 unsigned int ARRAY_SIZE (struct intel_gmbus*) ;
 int i2c_del_adapter (int *) ;
 int intel_gmbus_is_valid_pin (struct drm_i915_private*,unsigned int) ;

void intel_gmbus_teardown(struct drm_i915_private *dev_priv)
{
 struct intel_gmbus *bus;
 unsigned int pin;

 for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
  if (!intel_gmbus_is_valid_pin(dev_priv, pin))
   continue;

  bus = &dev_priv->gmbus[pin];
  i2c_del_adapter(&bus->adapter);
 }
}
