
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_i915_private {int drm; } ;


 int drm_dev_put (int *) ;
 int i915_driver_remove (struct drm_i915_private*) ;
 struct drm_i915_private* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void i915_pci_remove(struct pci_dev *pdev)
{
 struct drm_i915_private *i915;

 i915 = pci_get_drvdata(pdev);
 if (!i915)
  return;

 i915_driver_remove(i915);
 pci_set_drvdata(pdev, ((void*)0));

 drm_dev_put(&i915->drm);
}
