
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_vgpu {TYPE_4__* gvt; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {TYPE_3__* dev_priv; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_7__ {TYPE_2__ drm; } ;
struct TYPE_5__ {struct device dev; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int dma_unmap_page (struct device*,int ,unsigned long,int ) ;
 int gvt_unpin_guest_page (struct intel_vgpu*,unsigned long,unsigned long) ;

__attribute__((used)) static void gvt_dma_unmap_page(struct intel_vgpu *vgpu, unsigned long gfn,
  dma_addr_t dma_addr, unsigned long size)
{
 struct device *dev = &vgpu->gvt->dev_priv->drm.pdev->dev;

 dma_unmap_page(dev, dma_addr, size, PCI_DMA_BIDIRECTIONAL);
 gvt_unpin_guest_page(vgpu, gfn, size);
}
