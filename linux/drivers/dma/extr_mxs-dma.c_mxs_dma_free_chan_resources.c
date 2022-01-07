
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct mxs_dma_engine {int clk; TYPE_1__ dma_device; } ;
struct mxs_dma_chan {int ccw_phys; int ccw; int chan_irq; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;


 int CCW_BLOCK_SIZE ;
 int clk_disable_unprepare (int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int free_irq (int ,struct mxs_dma_engine*) ;
 int mxs_dma_disable_chan (struct dma_chan*) ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;

__attribute__((used)) static void mxs_dma_free_chan_resources(struct dma_chan *chan)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
 struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;

 mxs_dma_disable_chan(chan);

 free_irq(mxs_chan->chan_irq, mxs_dma);

 dma_free_coherent(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
   mxs_chan->ccw, mxs_chan->ccw_phys);

 clk_disable_unprepare(mxs_dma->clk);
}
