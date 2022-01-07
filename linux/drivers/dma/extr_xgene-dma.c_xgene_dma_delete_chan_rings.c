
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int tx_ring; int rx_ring; } ;


 int xgene_dma_delete_ring_one (int *) ;

__attribute__((used)) static void xgene_dma_delete_chan_rings(struct xgene_dma_chan *chan)
{
 xgene_dma_delete_ring_one(&chan->rx_ring);
 xgene_dma_delete_ring_one(&chan->tx_ring);
}
