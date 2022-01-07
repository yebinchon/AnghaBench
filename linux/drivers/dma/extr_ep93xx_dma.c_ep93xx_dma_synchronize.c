
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_dma_chan {TYPE_1__* edma; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int (* hw_synchronize ) (struct ep93xx_dma_chan*) ;} ;


 int stub1 (struct ep93xx_dma_chan*) ;
 struct ep93xx_dma_chan* to_ep93xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void ep93xx_dma_synchronize(struct dma_chan *chan)
{
 struct ep93xx_dma_chan *edmac = to_ep93xx_dma_chan(chan);

 if (edmac->edma->hw_synchronize)
  edmac->edma->hw_synchronize(edmac);
}
