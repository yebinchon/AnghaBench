
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_dma_ring {int cfgsize; int size; int desc_vaddr; int desc_paddr; int buf_num; int owner; int id; scalar_t__ num; TYPE_1__* pdma; } ;
struct xgene_dma_chan {int dev; TYPE_1__* pdma; } ;
typedef enum xgene_dma_ring_cfgsize { ____Placeholder_xgene_dma_ring_cfgsize } xgene_dma_ring_cfgsize ;
struct TYPE_2__ {int ring_num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XGENE_DMA_RING_ID_GET (int ,int ) ;
 int chan_err (struct xgene_dma_chan*,char*) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int xgene_dma_get_ring_size (struct xgene_dma_chan*,int) ;
 int xgene_dma_set_ring_cmd (struct xgene_dma_ring*) ;
 int xgene_dma_setup_ring (struct xgene_dma_ring*) ;

__attribute__((used)) static int xgene_dma_create_ring_one(struct xgene_dma_chan *chan,
         struct xgene_dma_ring *ring,
         enum xgene_dma_ring_cfgsize cfgsize)
{
 int ret;


 ring->pdma = chan->pdma;
 ring->cfgsize = cfgsize;
 ring->num = chan->pdma->ring_num++;
 ring->id = XGENE_DMA_RING_ID_GET(ring->owner, ring->buf_num);

 ret = xgene_dma_get_ring_size(chan, cfgsize);
 if (ret <= 0)
  return ret;
 ring->size = ret;


 ring->desc_vaddr = dma_alloc_coherent(chan->dev, ring->size,
           &ring->desc_paddr, GFP_KERNEL);
 if (!ring->desc_vaddr) {
  chan_err(chan, "Failed to allocate ring desc\n");
  return -ENOMEM;
 }


 xgene_dma_set_ring_cmd(ring);
 xgene_dma_setup_ring(ring);

 return 0;
}
