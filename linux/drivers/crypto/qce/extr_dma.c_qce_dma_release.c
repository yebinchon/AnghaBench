
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_dma_data {int result_buf; int rxchan; int txchan; } ;


 int dma_release_channel (int ) ;
 int kfree (int ) ;

void qce_dma_release(struct qce_dma_data *dma)
{
 dma_release_channel(dma->txchan);
 dma_release_channel(dma->rxchan);
 kfree(dma->result_buf);
}
