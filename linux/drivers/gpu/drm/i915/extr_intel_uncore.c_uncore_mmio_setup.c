
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct intel_uncore {int * regs; struct drm_i915_private* i915; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int DRM_ERROR (char*) ;
 int EIO ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int * pci_iomap (struct pci_dev*,int,int) ;

__attribute__((used)) static int uncore_mmio_setup(struct intel_uncore *uncore)
{
 struct drm_i915_private *i915 = uncore->i915;
 struct pci_dev *pdev = i915->drm.pdev;
 int mmio_bar;
 int mmio_size;

 mmio_bar = IS_GEN(i915, 2) ? 1 : 0;
 if (INTEL_GEN(i915) < 5)
  mmio_size = 512 * 1024;
 else
  mmio_size = 2 * 1024 * 1024;
 uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
 if (uncore->regs == ((void*)0)) {
  DRM_ERROR("failed to map registers\n");

  return -EIO;
 }

 return 0;
}
