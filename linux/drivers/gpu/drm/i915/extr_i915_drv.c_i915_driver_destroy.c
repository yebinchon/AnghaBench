
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int drm_dev_fini (TYPE_1__*) ;
 int kfree (struct drm_i915_private*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void i915_driver_destroy(struct drm_i915_private *i915)
{
 struct pci_dev *pdev = i915->drm.pdev;

 drm_dev_fini(&i915->drm);
 kfree(i915);


 pci_set_drvdata(pdev, ((void*)0));
}
