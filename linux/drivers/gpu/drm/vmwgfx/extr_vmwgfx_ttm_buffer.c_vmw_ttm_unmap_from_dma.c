
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int orig_nents; int nents; int sgl; } ;
struct vmw_ttm_tt {TYPE_3__ sgt; TYPE_2__* dev_priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_sg (struct device*,int ,int ,int ) ;

__attribute__((used)) static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
{
 struct device *dev = vmw_tt->dev_priv->dev->dev;

 dma_unmap_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.nents,
  DMA_BIDIRECTIONAL);
 vmw_tt->sgt.nents = vmw_tt->sgt.orig_nents;
}
