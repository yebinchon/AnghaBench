
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_dma_data {int txchan; int rxchan; } ;


 int dmaengine_terminate_all (int ) ;

int qce_dma_terminate_all(struct qce_dma_data *dma)
{
 int ret;

 ret = dmaengine_terminate_all(dma->rxchan);
 return ret ?: dmaengine_terminate_all(dma->txchan);
}
