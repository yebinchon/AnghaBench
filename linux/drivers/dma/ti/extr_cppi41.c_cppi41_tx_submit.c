
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_cookie_t ;


 int dma_cookie_assign (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t cppi41_tx_submit(struct dma_async_tx_descriptor *tx)
{
 dma_cookie_t cookie;

 cookie = dma_cookie_assign(tx);

 return cookie;
}
