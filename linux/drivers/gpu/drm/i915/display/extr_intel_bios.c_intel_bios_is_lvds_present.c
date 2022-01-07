
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ vbt; } ;
struct TYPE_4__ {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_i915_private {TYPE_1__ opregion; TYPE_2__ vbt; } ;
struct child_device_config {scalar_t__ device_type; scalar_t__ addin_offset; int i2c_pin; } ;


 scalar_t__ DEVICE_TYPE_INT_LFP ;
 scalar_t__ DEVICE_TYPE_LFP ;
 scalar_t__ intel_gmbus_is_valid_pin (struct drm_i915_private*,int ) ;

bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin)
{
 const struct child_device_config *child;
 int i;

 if (!dev_priv->vbt.child_dev_num)
  return 1;

 for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
  child = dev_priv->vbt.child_dev + i;





  if (child->device_type != DEVICE_TYPE_INT_LFP &&
      child->device_type != DEVICE_TYPE_LFP)
   continue;

  if (intel_gmbus_is_valid_pin(dev_priv, child->i2c_pin))
   *i2c_pin = child->i2c_pin;






  if (child->addin_offset)
   return 1;






  if (dev_priv->opregion.vbt)
   return 1;
 }

 return 0;
}
