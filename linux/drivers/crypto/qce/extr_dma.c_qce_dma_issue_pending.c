
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_dma_data {int txchan; int rxchan; } ;


 int dma_async_issue_pending (int ) ;

void qce_dma_issue_pending(struct qce_dma_data *dma)
{
 dma_async_issue_pending(dma->rxchan);
 dma_async_issue_pending(dma->txchan);
}
