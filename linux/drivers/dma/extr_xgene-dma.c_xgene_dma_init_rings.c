
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma {int * chan; } ;


 int XGENE_DMA_MAX_CHANNEL ;
 int xgene_dma_create_chan_rings (int *) ;
 int xgene_dma_delete_chan_rings (int *) ;

__attribute__((used)) static int xgene_dma_init_rings(struct xgene_dma *pdma)
{
 int ret, i, j;

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
  ret = xgene_dma_create_chan_rings(&pdma->chan[i]);
  if (ret) {
   for (j = 0; j < i; j++)
    xgene_dma_delete_chan_rings(&pdma->chan[j]);
   return ret;
  }
 }

 return ret;
}
