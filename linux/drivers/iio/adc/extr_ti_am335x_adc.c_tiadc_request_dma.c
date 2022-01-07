
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ src_addr; int src_addr_width; int direction; } ;
struct tiadc_dma {TYPE_4__* chan; int buf; int addr; TYPE_1__ conf; } ;
struct tiadc_device {TYPE_2__* mfd_tscadc; struct tiadc_dma dma; } ;
struct platform_device {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_11__ {TYPE_3__* device; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int dev; scalar_t__ tscadc_phys_base; } ;


 int DMA_BUFFER_SIZE ;
 int DMA_CYCLIC ;
 int DMA_DEV_TO_MEM ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int PTR_ERR (TYPE_4__*) ;
 scalar_t__ REG_FIFO1 ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (TYPE_4__*) ;
 TYPE_4__* dma_request_chan (int ,char*) ;

__attribute__((used)) static int tiadc_request_dma(struct platform_device *pdev,
        struct tiadc_device *adc_dev)
{
 struct tiadc_dma *dma = &adc_dev->dma;
 dma_cap_mask_t mask;


 dma->conf.direction = DMA_DEV_TO_MEM;
 dma->conf.src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;
 dma->conf.src_addr = adc_dev->mfd_tscadc->tscadc_phys_base + REG_FIFO1;

 dma_cap_zero(mask);
 dma_cap_set(DMA_CYCLIC, mask);


 dma->chan = dma_request_chan(adc_dev->mfd_tscadc->dev, "fifo1");
 if (IS_ERR(dma->chan)) {
  int ret = PTR_ERR(dma->chan);

  dma->chan = ((void*)0);
  return ret;
 }


 dma->buf = dma_alloc_coherent(dma->chan->device->dev, DMA_BUFFER_SIZE,
          &dma->addr, GFP_KERNEL);
 if (!dma->buf)
  goto err;

 return 0;
err:
 dma_release_channel(dma->chan);
 return -ENOMEM;
}
