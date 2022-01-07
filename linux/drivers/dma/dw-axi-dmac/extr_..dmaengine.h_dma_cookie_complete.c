
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_async_tx_descriptor {scalar_t__ cookie; TYPE_1__* chan; } ;
struct TYPE_2__ {scalar_t__ completed_cookie; } ;


 int BUG_ON (int) ;
 scalar_t__ DMA_MIN_COOKIE ;

__attribute__((used)) static inline void dma_cookie_complete(struct dma_async_tx_descriptor *tx)
{
 BUG_ON(tx->cookie < DMA_MIN_COOKIE);
 tx->chan->completed_cookie = tx->cookie;
 tx->cookie = 0;
}
