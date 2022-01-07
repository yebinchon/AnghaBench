
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsldma_chan {TYPE_1__* regs; } ;
struct TYPE_2__ {int bcr; } ;


 int FSL_DMA_OUT (struct fsldma_chan*,int *,int ,int) ;

__attribute__((used)) static void set_bcr(struct fsldma_chan *chan, u32 val)
{
 FSL_DMA_OUT(chan, &chan->regs->bcr, val, 32);
}
