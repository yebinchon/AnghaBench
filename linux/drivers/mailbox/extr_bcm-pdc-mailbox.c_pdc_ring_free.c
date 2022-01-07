
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vbase; int dmabase; } ;
struct TYPE_4__ {int * vbase; int dmabase; } ;
struct pdc_state {TYPE_1__ rx_ring_alloc; int ring_pool; TYPE_2__ tx_ring_alloc; } ;


 int dma_pool_free (int ,int *,int ) ;

__attribute__((used)) static void pdc_ring_free(struct pdc_state *pdcs)
{
 if (pdcs->tx_ring_alloc.vbase) {
  dma_pool_free(pdcs->ring_pool, pdcs->tx_ring_alloc.vbase,
         pdcs->tx_ring_alloc.dmabase);
  pdcs->tx_ring_alloc.vbase = ((void*)0);
 }

 if (pdcs->rx_ring_alloc.vbase) {
  dma_pool_free(pdcs->ring_pool, pdcs->rx_ring_alloc.vbase,
         pdcs->rx_ring_alloc.dmabase);
  pdcs->rx_ring_alloc.vbase = ((void*)0);
 }
}
