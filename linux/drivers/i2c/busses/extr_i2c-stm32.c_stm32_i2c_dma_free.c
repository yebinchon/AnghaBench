
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_i2c_dma {int * chan_using; int * chan_rx; int * chan_tx; scalar_t__ dma_len; scalar_t__ dma_buf; } ;


 int dma_release_channel (int *) ;

void stm32_i2c_dma_free(struct stm32_i2c_dma *dma)
{
 dma->dma_buf = 0;
 dma->dma_len = 0;

 dma_release_channel(dma->chan_tx);
 dma->chan_tx = ((void*)0);

 dma_release_channel(dma->chan_rx);
 dma->chan_rx = ((void*)0);

 dma->chan_using = ((void*)0);
}
