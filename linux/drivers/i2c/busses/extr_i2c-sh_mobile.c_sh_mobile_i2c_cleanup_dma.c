
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {scalar_t__ dma_direction; int dma_tx; int dma_rx; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int dmaengine_terminate_all (int ) ;
 int sh_mobile_i2c_dma_unmap (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static void sh_mobile_i2c_cleanup_dma(struct sh_mobile_i2c_data *pd)
{
 if (pd->dma_direction == DMA_NONE)
  return;
 else if (pd->dma_direction == DMA_FROM_DEVICE)
  dmaengine_terminate_all(pd->dma_rx);
 else if (pd->dma_direction == DMA_TO_DEVICE)
  dmaengine_terminate_all(pd->dma_tx);

 sh_mobile_i2c_dma_unmap(pd);
}
