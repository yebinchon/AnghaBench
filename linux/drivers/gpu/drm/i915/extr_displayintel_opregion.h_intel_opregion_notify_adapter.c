
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int pci_power_t ;



__attribute__((used)) static inline int
intel_opregion_notify_adapter(struct drm_i915_private *dev, pci_power_t state)
{
 return 0;
}
