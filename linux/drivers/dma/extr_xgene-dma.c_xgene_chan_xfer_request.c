
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_ring {size_t head; size_t slots; int cmd; struct xgene_dma_desc_hw* desc_hw; } ;
struct xgene_dma_desc_sw {int flags; int desc2; int desc1; } ;
struct xgene_dma_desc_hw {int dummy; } ;
struct xgene_dma_chan {int pending; struct xgene_dma_ring tx_ring; } ;


 int XGENE_DMA_FLAG_64B_DESC ;
 int iowrite32 (int,int ) ;
 int memcpy (struct xgene_dma_desc_hw*,int *,int) ;

__attribute__((used)) static void xgene_chan_xfer_request(struct xgene_dma_chan *chan,
        struct xgene_dma_desc_sw *desc_sw)
{
 struct xgene_dma_ring *ring = &chan->tx_ring;
 struct xgene_dma_desc_hw *desc_hw;


 desc_hw = &ring->desc_hw[ring->head];





 if (++ring->head == ring->slots)
  ring->head = 0;


 memcpy(desc_hw, &desc_sw->desc1, sizeof(*desc_hw));





 if (desc_sw->flags & XGENE_DMA_FLAG_64B_DESC) {
  desc_hw = &ring->desc_hw[ring->head];

  if (++ring->head == ring->slots)
   ring->head = 0;

  memcpy(desc_hw, &desc_sw->desc2, sizeof(*desc_hw));
 }


 chan->pending += ((desc_sw->flags &
     XGENE_DMA_FLAG_64B_DESC) ? 2 : 1);


 iowrite32((desc_sw->flags & XGENE_DMA_FLAG_64B_DESC) ?
    2 : 1, ring->cmd);
}
