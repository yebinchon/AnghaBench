
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct child_device_config {scalar_t__ hpd_invert; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_3__ {struct child_device_config* child; } ;


 int IS_GEN9_LP (struct drm_i915_private const*) ;
 scalar_t__ WARN_ON_ONCE (int) ;

bool
intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
    enum port port)
{
 const struct child_device_config *child =
  i915->vbt.ddi_port_info[port].child;

 if (WARN_ON_ONCE(!IS_GEN9_LP(i915)))
  return 0;

 return child && child->hpd_invert;
}
