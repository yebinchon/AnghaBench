
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {struct drm_i915_private* dev_priv; } ;
struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int gmbus_mutex; } ;


 int mutex_lock (int *) ;
 struct intel_gmbus* to_intel_gmbus (struct i2c_adapter*) ;

__attribute__((used)) static void gmbus_lock_bus(struct i2c_adapter *adapter,
      unsigned int flags)
{
 struct intel_gmbus *bus = to_intel_gmbus(adapter);
 struct drm_i915_private *dev_priv = bus->dev_priv;

 mutex_lock(&dev_priv->gmbus_mutex);
}
