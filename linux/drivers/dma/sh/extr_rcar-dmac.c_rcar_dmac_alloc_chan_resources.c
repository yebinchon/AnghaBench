
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pages; int chunks_free; } ;
struct rcar_dmac_chan {TYPE_1__ desc; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int pm_runtime_get_sync (int ) ;
 int rcar_dmac_desc_alloc (struct rcar_dmac_chan*,int ) ;
 int rcar_dmac_xfer_chunk_alloc (struct rcar_dmac_chan*,int ) ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static int rcar_dmac_alloc_chan_resources(struct dma_chan *chan)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);
 int ret;

 INIT_LIST_HEAD(&rchan->desc.chunks_free);
 INIT_LIST_HEAD(&rchan->desc.pages);


 ret = rcar_dmac_xfer_chunk_alloc(rchan, GFP_KERNEL);
 if (ret < 0)
  return -ENOMEM;

 ret = rcar_dmac_desc_alloc(rchan, GFP_KERNEL);
 if (ret < 0)
  return -ENOMEM;

 return pm_runtime_get_sync(chan->device->dev);
}
