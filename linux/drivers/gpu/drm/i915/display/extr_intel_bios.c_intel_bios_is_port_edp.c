
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int child_dev_num; struct child_device_config* child_dev; TYPE_1__* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct child_device_config {short const dvo_port; int device_type; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_3__ {int supports_edp; } ;


 int DEVICE_TYPE_eDP ;
 int DEVICE_TYPE_eDP_BITS ;





 scalar_t__ HAS_DDI (struct drm_i915_private*) ;






bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
{
 const struct child_device_config *child;
 static const short port_mapping[] = {
  [132] = 137,
  [131] = 136,
  [130] = 135,
  [129] = 134,
  [128] = 133,
 };
 int i;

 if (HAS_DDI(dev_priv))
  return dev_priv->vbt.ddi_port_info[port].supports_edp;

 if (!dev_priv->vbt.child_dev_num)
  return 0;

 for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
  child = dev_priv->vbt.child_dev + i;

  if (child->dvo_port == port_mapping[port] &&
      (child->device_type & DEVICE_TYPE_eDP_BITS) ==
      (DEVICE_TYPE_eDP & DEVICE_TYPE_eDP_BITS))
   return 1;
 }

 return 0;
}
