
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jz4780_dma_chan {int desc_pool; } ;
struct dma_chan {TYPE_2__* dev; TYPE_1__* device; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int JZ_DMA_DESC_BLOCK_SIZE ;
 int PAGE_SIZE ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int dma_pool_create (int ,int ,int ,int ,int ) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int jz4780_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);

 jzchan->desc_pool = dma_pool_create(dev_name(&chan->dev->device),
         chan->device->dev,
         JZ_DMA_DESC_BLOCK_SIZE,
         PAGE_SIZE, 0);
 if (!jzchan->desc_pool) {
  dev_err(&chan->dev->device,
   "failed to allocate descriptor pool\n");
  return -ENOMEM;
 }

 return 0;
}
