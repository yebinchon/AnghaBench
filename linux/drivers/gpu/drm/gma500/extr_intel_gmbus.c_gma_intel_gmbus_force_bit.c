
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int reg0; int * force_bit; } ;
struct i2c_adapter {struct drm_psb_private* algo_data; } ;
struct drm_psb_private {int dummy; } ;


 int i2c_del_adapter (int *) ;
 int * intel_gpio_create (struct drm_psb_private*,int) ;
 int kfree (int *) ;
 struct intel_gmbus* to_intel_gmbus (struct i2c_adapter*) ;

void gma_intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
{
 struct intel_gmbus *bus = to_intel_gmbus(adapter);

 if (force_bit) {
  if (bus->force_bit == ((void*)0)) {
   struct drm_psb_private *dev_priv = adapter->algo_data;
   bus->force_bit = intel_gpio_create(dev_priv,
          bus->reg0 & 0xff);
  }
 } else {
  if (bus->force_bit) {
   i2c_del_adapter(bus->force_bit);
   kfree(bus->force_bit);
   bus->force_bit = ((void*)0);
  }
 }
}
