
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;


 int ep93xx_dma_advance_work (int ) ;
 int to_ep93xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void ep93xx_dma_issue_pending(struct dma_chan *chan)
{
 ep93xx_dma_advance_work(to_ep93xx_dma_chan(chan));
}
