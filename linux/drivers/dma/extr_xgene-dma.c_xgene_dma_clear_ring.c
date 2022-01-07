
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_dma_ring {scalar_t__ owner; TYPE_1__* pdma; int id; int buf_num; } ;
struct TYPE_2__ {scalar_t__ csr_ring; } ;


 scalar_t__ XGENE_DMA_RING_ID ;
 scalar_t__ XGENE_DMA_RING_ID_BUF ;
 int XGENE_DMA_RING_ID_SETUP (int ) ;
 scalar_t__ XGENE_DMA_RING_NE_INT_MODE ;
 int XGENE_DMA_RING_NE_INT_MODE_RESET (int ,int ) ;
 scalar_t__ XGENE_DMA_RING_OWNER_CPU ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int xgene_dma_clr_ring_state (struct xgene_dma_ring*) ;

__attribute__((used)) static void xgene_dma_clear_ring(struct xgene_dma_ring *ring)
{
 u32 ring_id, val;

 if (ring->owner == XGENE_DMA_RING_OWNER_CPU) {

  val = ioread32(ring->pdma->csr_ring +
          XGENE_DMA_RING_NE_INT_MODE);
  XGENE_DMA_RING_NE_INT_MODE_RESET(val, ring->buf_num);
  iowrite32(val, ring->pdma->csr_ring +
     XGENE_DMA_RING_NE_INT_MODE);
 }


 ring_id = XGENE_DMA_RING_ID_SETUP(ring->id);
 iowrite32(ring_id, ring->pdma->csr_ring + XGENE_DMA_RING_ID);

 iowrite32(0, ring->pdma->csr_ring + XGENE_DMA_RING_ID_BUF);
 xgene_dma_clr_ring_state(ring);
}
