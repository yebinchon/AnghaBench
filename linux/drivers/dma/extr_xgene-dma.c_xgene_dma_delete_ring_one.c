
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_dma_ring {int * desc_vaddr; int desc_paddr; int size; TYPE_1__* pdma; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;
 int xgene_dma_clear_ring (struct xgene_dma_ring*) ;

__attribute__((used)) static void xgene_dma_delete_ring_one(struct xgene_dma_ring *ring)
{

 xgene_dma_clear_ring(ring);


 if (ring->desc_vaddr) {
  dma_free_coherent(ring->pdma->dev, ring->size,
      ring->desc_vaddr, ring->desc_paddr);
  ring->desc_vaddr = ((void*)0);
 }
}
