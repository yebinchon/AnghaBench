
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int child_dev_num; struct child_device_config* child_dev; int int_tv_support; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct child_device_config {int device_type; scalar_t__ addin_offset; } ;






bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv)
{
 const struct child_device_config *child;
 int i;

 if (!dev_priv->vbt.int_tv_support)
  return 0;

 if (!dev_priv->vbt.child_dev_num)
  return 1;

 for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
  child = dev_priv->vbt.child_dev + i;



  switch (child->device_type) {
  case 130:
  case 129:
  case 128:
   break;
  default:
   continue;
  }



  if (child->addin_offset)
   return 1;
 }

 return 0;
}
