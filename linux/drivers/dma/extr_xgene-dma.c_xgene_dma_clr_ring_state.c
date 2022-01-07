
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_dma_ring {int state; } ;


 int XGENE_DMA_RING_NUM_CONFIG ;
 int memset (int ,int ,int) ;
 int xgene_dma_wr_ring_state (struct xgene_dma_ring*) ;

__attribute__((used)) static void xgene_dma_clr_ring_state(struct xgene_dma_ring *ring)
{
 memset(ring->state, 0, sizeof(u32) * XGENE_DMA_RING_NUM_CONFIG);
 xgene_dma_wr_ring_state(ring);
}
