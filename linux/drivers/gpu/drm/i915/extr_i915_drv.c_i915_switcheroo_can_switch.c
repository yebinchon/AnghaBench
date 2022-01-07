
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ open_count; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 struct drm_i915_private* pdev_to_i915 (struct pci_dev*) ;

__attribute__((used)) static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
{
 struct drm_i915_private *i915 = pdev_to_i915(pdev);






 return i915 && i915->drm.open_count == 0;
}
