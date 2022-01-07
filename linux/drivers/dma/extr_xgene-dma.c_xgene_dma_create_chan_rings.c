
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_ring {int slots; int desc_vaddr; int num; int id; int dst_ring_num; scalar_t__ buf_num; int owner; } ;
struct xgene_dma_chan {int max_outstanding; scalar_t__ id; struct xgene_dma_ring tx_ring; struct xgene_dma_ring rx_ring; } ;


 scalar_t__ XGENE_DMA_BUFNUM ;
 scalar_t__ XGENE_DMA_CPU_BUFNUM ;
 int XGENE_DMA_RING_CFG_SIZE_64KB ;
 int XGENE_DMA_RING_DST_ID (int ) ;
 int XGENE_DMA_RING_OWNER_CPU ;
 int XGENE_DMA_RING_OWNER_DMA ;
 int chan_dbg (struct xgene_dma_chan*,char*,int ,int ,int ) ;
 int xgene_dma_create_ring_one (struct xgene_dma_chan*,struct xgene_dma_ring*,int ) ;
 int xgene_dma_delete_ring_one (struct xgene_dma_ring*) ;

__attribute__((used)) static int xgene_dma_create_chan_rings(struct xgene_dma_chan *chan)
{
 struct xgene_dma_ring *rx_ring = &chan->rx_ring;
 struct xgene_dma_ring *tx_ring = &chan->tx_ring;
 int ret;


 rx_ring->owner = XGENE_DMA_RING_OWNER_CPU;
 rx_ring->buf_num = XGENE_DMA_CPU_BUFNUM + chan->id;

 ret = xgene_dma_create_ring_one(chan, rx_ring,
     XGENE_DMA_RING_CFG_SIZE_64KB);
 if (ret)
  return ret;

 chan_dbg(chan, "Rx ring id 0x%X num %d desc 0x%p\n",
   rx_ring->id, rx_ring->num, rx_ring->desc_vaddr);


 tx_ring->owner = XGENE_DMA_RING_OWNER_DMA;
 tx_ring->buf_num = XGENE_DMA_BUFNUM + chan->id;

 ret = xgene_dma_create_ring_one(chan, tx_ring,
     XGENE_DMA_RING_CFG_SIZE_64KB);
 if (ret) {
  xgene_dma_delete_ring_one(rx_ring);
  return ret;
 }

 tx_ring->dst_ring_num = XGENE_DMA_RING_DST_ID(rx_ring->num);

 chan_dbg(chan,
   "Tx ring id 0x%X num %d desc 0x%p\n",
   tx_ring->id, tx_ring->num, tx_ring->desc_vaddr);


 chan->max_outstanding = tx_ring->slots;

 return ret;
}
