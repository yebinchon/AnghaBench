
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsldma_chan {TYPE_1__* regs; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int cdar; } ;


 int FSL_DMA_IN (struct fsldma_chan*,int *,int) ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static dma_addr_t get_cdar(struct fsldma_chan *chan)
{
 return FSL_DMA_IN(chan, &chan->regs->cdar, 64) & ~FSL_DMA_SNEN;
}
