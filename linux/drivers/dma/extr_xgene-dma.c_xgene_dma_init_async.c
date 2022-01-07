
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_dma {TYPE_1__* chan; int * dma_dev; } ;
struct TYPE_2__ {int tasklet; } ;


 int XGENE_DMA_MAX_CHANNEL ;
 int dma_async_device_unregister (int *) ;
 int tasklet_kill (int *) ;
 int xgene_dma_async_register (struct xgene_dma*,int) ;

__attribute__((used)) static int xgene_dma_init_async(struct xgene_dma *pdma)
{
 int ret, i, j;

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL ; i++) {
  ret = xgene_dma_async_register(pdma, i);
  if (ret) {
   for (j = 0; j < i; j++) {
    dma_async_device_unregister(&pdma->dma_dev[j]);
    tasklet_kill(&pdma->chan[j].tasklet);
   }

   return ret;
  }
 }

 return ret;
}
