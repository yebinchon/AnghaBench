
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsldma_chan {TYPE_1__* regs; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int cdar; } ;


 int FSL_DMA_OUT (struct fsldma_chan*,int *,int,int) ;
 int FSL_DMA_SNEN ;

__attribute__((used)) static void set_cdar(struct fsldma_chan *chan, dma_addr_t addr)
{
 FSL_DMA_OUT(chan, &chan->regs->cdar, addr | FSL_DMA_SNEN, 64);
}
