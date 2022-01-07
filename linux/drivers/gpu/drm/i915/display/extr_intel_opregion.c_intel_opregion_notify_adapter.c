
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
typedef scalar_t__ pci_power_t ;
struct TYPE_3__ {scalar_t__ pci_power_state; int parm; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int HAS_DDI (struct drm_i915_private*) ;
 int SWSCI_SBCB_ADAPTER_POWER_STATE ;
 TYPE_1__* power_state_map ;
 int swsci (struct drm_i915_private*,int ,int ,int *) ;

int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
      pci_power_t state)
{
 int i;

 if (!HAS_DDI(dev_priv))
  return 0;

 for (i = 0; i < ARRAY_SIZE(power_state_map); i++) {
  if (state == power_state_map[i].pci_power_state)
   return swsci(dev_priv, SWSCI_SBCB_ADAPTER_POWER_STATE,
         power_state_map[i].parm, ((void*)0));
 }

 return -EINVAL;
}
