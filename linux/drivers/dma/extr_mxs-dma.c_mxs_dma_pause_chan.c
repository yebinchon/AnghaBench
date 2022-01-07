
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_dma_engine {scalar_t__ base; } ;
struct TYPE_2__ {int chan_id; } ;
struct mxs_dma_chan {int status; TYPE_1__ chan; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;


 int DMA_PAUSED ;
 scalar_t__ HW_APBHX_CHANNEL_CTRL ;
 scalar_t__ HW_APBHX_CTRL0 ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 scalar_t__ apbh_is_old (struct mxs_dma_engine*) ;
 scalar_t__ dma_is_apbh (struct mxs_dma_engine*) ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxs_dma_pause_chan(struct dma_chan *chan)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
 struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
 int chan_id = mxs_chan->chan.chan_id;


 if (dma_is_apbh(mxs_dma) && apbh_is_old(mxs_dma))
  writel(1 << chan_id,
   mxs_dma->base + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 else
  writel(1 << chan_id,
   mxs_dma->base + HW_APBHX_CHANNEL_CTRL + STMP_OFFSET_REG_SET);

 mxs_chan->status = DMA_PAUSED;
 return 0;
}
