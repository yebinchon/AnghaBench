
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int child_dev_num; struct child_device_config* child_dev; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct child_device_config {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 scalar_t__ child_dev_is_dp_dual_mode (struct child_device_config const*,int) ;

bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv,
         enum port port)
{
 const struct child_device_config *child;
 int i;

 for (i = 0; i < dev_priv->vbt.child_dev_num; i++) {
  child = dev_priv->vbt.child_dev + i;

  if (child_dev_is_dp_dual_mode(child, port))
   return 1;
 }

 return 0;
}
