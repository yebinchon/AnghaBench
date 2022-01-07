
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_dma_engine {scalar_t__ base; } ;
struct TYPE_2__ {int chan_id; } ;
struct mxs_dma_chan {int ccw_phys; int flags; int reset; TYPE_1__ chan; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ HW_APBHX_CHn_NXTCMDAR (struct mxs_dma_engine*,int) ;
 scalar_t__ HW_APBHX_CHn_SEMA (struct mxs_dma_engine*,int) ;
 int MXS_DMA_SG_LOOP ;
 int MXS_DMA_USE_SEMAPHORE ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxs_dma_enable_chan(struct dma_chan *chan)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
 struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
 int chan_id = mxs_chan->chan.chan_id;


 writel(mxs_chan->ccw_phys,
  mxs_dma->base + HW_APBHX_CHn_NXTCMDAR(mxs_dma, chan_id));


 if (mxs_chan->flags & MXS_DMA_USE_SEMAPHORE &&
   mxs_chan->flags & MXS_DMA_SG_LOOP) {



  writel(2, mxs_dma->base + HW_APBHX_CHn_SEMA(mxs_dma, chan_id));
 } else {
  writel(1, mxs_dma->base + HW_APBHX_CHn_SEMA(mxs_dma, chan_id));
 }
 mxs_chan->reset = 0;
}
