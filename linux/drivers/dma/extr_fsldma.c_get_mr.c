
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsldma_chan {TYPE_1__* regs; } ;
struct TYPE_2__ {int mr; } ;


 int FSL_DMA_IN (struct fsldma_chan*,int *,int) ;

__attribute__((used)) static u32 get_mr(struct fsldma_chan *chan)
{
 return FSL_DMA_IN(chan, &chan->regs->mr, 32);
}
