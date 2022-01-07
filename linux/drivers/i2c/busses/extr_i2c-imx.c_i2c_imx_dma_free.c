
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_i2c_struct {struct imx_i2c_dma* dma; } ;
struct imx_i2c_dma {int * chan_using; int * chan_rx; int * chan_tx; scalar_t__ dma_len; scalar_t__ dma_buf; } ;


 int dma_release_channel (int *) ;

__attribute__((used)) static void i2c_imx_dma_free(struct imx_i2c_struct *i2c_imx)
{
 struct imx_i2c_dma *dma = i2c_imx->dma;

 dma->dma_buf = 0;
 dma->dma_len = 0;

 dma_release_channel(dma->chan_tx);
 dma->chan_tx = ((void*)0);

 dma_release_channel(dma->chan_rx);
 dma->chan_rx = ((void*)0);

 dma->chan_using = ((void*)0);
}
