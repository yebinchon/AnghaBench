
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_i2c_data {scalar_t__ dma_direction; TYPE_2__* msg; int sg; struct dma_chan* dma_tx; struct dma_chan* dma_rx; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 int dma_unmap_single (int ,int ,int ,scalar_t__) ;
 int sg_dma_address (int *) ;

__attribute__((used)) static void sh_mobile_i2c_dma_unmap(struct sh_mobile_i2c_data *pd)
{
 struct dma_chan *chan = pd->dma_direction == DMA_FROM_DEVICE
    ? pd->dma_rx : pd->dma_tx;

 dma_unmap_single(chan->device->dev, sg_dma_address(&pd->sg),
    pd->msg->len, pd->dma_direction);

 pd->dma_direction = DMA_NONE;
}
