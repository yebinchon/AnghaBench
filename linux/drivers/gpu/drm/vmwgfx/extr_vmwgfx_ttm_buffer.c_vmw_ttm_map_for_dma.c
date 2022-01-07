
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int nents; int orig_nents; int sgl; } ;
struct vmw_ttm_tt {TYPE_3__ sgt; TYPE_2__* dev_priv; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int dma_map_sg (struct device*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vmw_ttm_map_for_dma(struct vmw_ttm_tt *vmw_tt)
{
 struct device *dev = vmw_tt->dev_priv->dev->dev;
 int ret;

 ret = dma_map_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.orig_nents,
    DMA_BIDIRECTIONAL);
 if (unlikely(ret == 0))
  return -ENOMEM;

 vmw_tt->sgt.nents = ret;

 return 0;
}
