
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 struct drm_i915_private* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
{
 return pci_get_drvdata(pdev);
}
