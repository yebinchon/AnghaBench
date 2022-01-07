
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int scratch_mfn; int scratch_page; } ;
struct intel_gvt {TYPE_4__ gtt; TYPE_3__* dev_priv; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {TYPE_2__ drm; } ;
struct TYPE_5__ {struct device dev; } ;


 int I915_GTT_PAGE_SHIFT ;
 int PCI_DMA_BIDIRECTIONAL ;
 int __free_page (int ) ;
 int clean_spt_oos (struct intel_gvt*) ;
 int dma_unmap_page (struct device*,int ,int,int ) ;
 scalar_t__ enable_out_of_sync ;

void intel_gvt_clean_gtt(struct intel_gvt *gvt)
{
 struct device *dev = &gvt->dev_priv->drm.pdev->dev;
 dma_addr_t daddr = (dma_addr_t)(gvt->gtt.scratch_mfn <<
     I915_GTT_PAGE_SHIFT);

 dma_unmap_page(dev, daddr, 4096, PCI_DMA_BIDIRECTIONAL);

 __free_page(gvt->gtt.scratch_page);

 if (enable_out_of_sync)
  clean_spt_oos(gvt);
}
