
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct mxs_dma_engine {TYPE_1__ dma_device; int clk; } ;
struct TYPE_5__ {int tx_submit; } ;
struct mxs_dma_chan {int ccw_phys; int ccw; int chan_irq; TYPE_2__ desc; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;


 int CCW_BLOCK_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int async_tx_ack (TYPE_2__*) ;
 int clk_prepare_enable (int ) ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,struct dma_chan*) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int free_irq (int ,struct mxs_dma_engine*) ;
 int mxs_dma_int_handler ;
 int mxs_dma_reset_chan (struct dma_chan*) ;
 int mxs_dma_tx_submit ;
 int request_irq (int ,int ,int ,char*,struct mxs_dma_engine*) ;
 struct mxs_dma_chan* to_mxs_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int mxs_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct mxs_dma_chan *mxs_chan = to_mxs_dma_chan(chan);
 struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
 int ret;

 mxs_chan->ccw = dma_alloc_coherent(mxs_dma->dma_device.dev,
        CCW_BLOCK_SIZE,
        &mxs_chan->ccw_phys, GFP_KERNEL);
 if (!mxs_chan->ccw) {
  ret = -ENOMEM;
  goto err_alloc;
 }

 ret = request_irq(mxs_chan->chan_irq, mxs_dma_int_handler,
     0, "mxs-dma", mxs_dma);
 if (ret)
  goto err_irq;

 ret = clk_prepare_enable(mxs_dma->clk);
 if (ret)
  goto err_clk;

 mxs_dma_reset_chan(chan);

 dma_async_tx_descriptor_init(&mxs_chan->desc, chan);
 mxs_chan->desc.tx_submit = mxs_dma_tx_submit;


 async_tx_ack(&mxs_chan->desc);

 return 0;

err_clk:
 free_irq(mxs_chan->chan_irq, mxs_dma);
err_irq:
 dma_free_coherent(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
   mxs_chan->ccw, mxs_chan->ccw_phys);
err_alloc:
 return ret;
}
