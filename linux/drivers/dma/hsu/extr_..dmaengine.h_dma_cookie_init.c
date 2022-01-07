
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {void* completed_cookie; void* cookie; } ;


 void* DMA_MIN_COOKIE ;

__attribute__((used)) static inline void dma_cookie_init(struct dma_chan *chan)
{
 chan->cookie = DMA_MIN_COOKIE;
 chan->completed_cookie = DMA_MIN_COOKIE;
}
