
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {TYPE_3__* scratch; int (* pte_encode ) (int ,int ,int ) ;struct drm_i915_private* i915; } ;
struct i915_ggtt {TYPE_2__ vm; int gsm; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_6__ {int encode; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int I915_CACHE_NONE ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int ioremap_nocache (scalar_t__,int ) ;
 int ioremap_wc (scalar_t__,int ) ;
 int iounmap (int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int px_dma (TYPE_3__*) ;
 int setup_scratch_page (TYPE_2__*,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
{
 struct drm_i915_private *dev_priv = ggtt->vm.i915;
 struct pci_dev *pdev = dev_priv->drm.pdev;
 phys_addr_t phys_addr;
 int ret;


 phys_addr = pci_resource_start(pdev, 0) + pci_resource_len(pdev, 0) / 2;
 if (IS_GEN9_LP(dev_priv) || INTEL_GEN(dev_priv) >= 10)
  ggtt->gsm = ioremap_nocache(phys_addr, size);
 else
  ggtt->gsm = ioremap_wc(phys_addr, size);
 if (!ggtt->gsm) {
  DRM_ERROR("Failed to map the ggtt page table\n");
  return -ENOMEM;
 }

 ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
 if (ret) {
  DRM_ERROR("Scratch setup failed\n");

  iounmap(ggtt->gsm);
  return ret;
 }

 ggtt->vm.scratch[0].encode =
  ggtt->vm.pte_encode(px_dma(&ggtt->vm.scratch[0]),
        I915_CACHE_NONE, 0);

 return 0;
}
