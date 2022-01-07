
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct drm_i915_private {TYPE_1__* gmbus; } ;
struct TYPE_2__ {struct i2c_adapter adapter; } ;


 scalar_t__ WARN_ON (int) ;
 int intel_gmbus_is_valid_pin (struct drm_i915_private*,unsigned int) ;

struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *dev_priv,
         unsigned int pin)
{
 if (WARN_ON(!intel_gmbus_is_valid_pin(dev_priv, pin)))
  return ((void*)0);

 return &dev_priv->gmbus[pin].adapter;
}
