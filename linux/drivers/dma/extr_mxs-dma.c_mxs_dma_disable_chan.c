
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_dma_chan {int status; } ;
struct dma_chan {int dummy; } ;


 int DMA_COMPLETE ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void mxs_dma_disable_chan(struct dma_chan *chan)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);

 mxs_chan->status = DMA_COMPLETE;
}
