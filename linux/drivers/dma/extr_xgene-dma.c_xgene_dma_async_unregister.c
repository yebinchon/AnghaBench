
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma {int * dma_dev; } ;


 int XGENE_DMA_MAX_CHANNEL ;
 int dma_async_device_unregister (int *) ;

__attribute__((used)) static void xgene_dma_async_unregister(struct xgene_dma *pdma)
{
 int i;

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++)
  dma_async_device_unregister(&pdma->dma_dev[i]);
}
