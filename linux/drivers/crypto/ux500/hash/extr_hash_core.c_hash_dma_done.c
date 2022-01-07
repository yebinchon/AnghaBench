
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hash_ctx {TYPE_3__* device; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_5__ {int sg_len; int sg; struct dma_chan* chan_mem2hash; } ;
struct TYPE_6__ {TYPE_2__ dma; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int dmaengine_terminate_all (struct dma_chan*) ;

__attribute__((used)) static void hash_dma_done(struct hash_ctx *ctx)
{
 struct dma_chan *chan;

 chan = ctx->device->dma.chan_mem2hash;
 dmaengine_terminate_all(chan);
 dma_unmap_sg(chan->device->dev, ctx->device->dma.sg,
       ctx->device->dma.sg_len, DMA_TO_DEVICE);
}
