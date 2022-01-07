
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device_node; struct dma_device* device; } ;
struct xgene_dma_chan {TYPE_1__ dma_chan; int tasklet; int * desc_pool; scalar_t__ pending; int ld_completed; int ld_running; int ld_pending; int lock; } ;
struct xgene_dma {int dev; struct dma_device* dma_dev; struct xgene_dma_chan* chan; } ;
struct dma_device {int cap_mask; int channels; } ;


 int DMA_PQ ;
 int DMA_XOR ;
 int INIT_LIST_HEAD (int *) ;
 int chan_err (struct xgene_dma_chan*,char*,int) ;
 int dev_info (int ,char*,int ,char*,char*) ;
 int dma_async_device_register (struct dma_device*) ;
 int dma_chan_name (TYPE_1__*) ;
 int dma_cookie_init (TYPE_1__*) ;
 scalar_t__ dma_has_cap (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;
 int xgene_dma_set_caps (struct xgene_dma_chan*,struct dma_device*) ;
 int xgene_dma_tasklet_cb ;

__attribute__((used)) static int xgene_dma_async_register(struct xgene_dma *pdma, int id)
{
 struct xgene_dma_chan *chan = &pdma->chan[id];
 struct dma_device *dma_dev = &pdma->dma_dev[id];
 int ret;

 chan->dma_chan.device = dma_dev;

 spin_lock_init(&chan->lock);
 INIT_LIST_HEAD(&chan->ld_pending);
 INIT_LIST_HEAD(&chan->ld_running);
 INIT_LIST_HEAD(&chan->ld_completed);
 tasklet_init(&chan->tasklet, xgene_dma_tasklet_cb,
       (unsigned long)chan);

 chan->pending = 0;
 chan->desc_pool = ((void*)0);
 dma_cookie_init(&chan->dma_chan);


 xgene_dma_set_caps(chan, dma_dev);


 INIT_LIST_HEAD(&dma_dev->channels);
 list_add_tail(&chan->dma_chan.device_node, &dma_dev->channels);


 ret = dma_async_device_register(dma_dev);
 if (ret) {
  chan_err(chan, "Failed to register async device %d", ret);
  tasklet_kill(&chan->tasklet);

  return ret;
 }


 dev_info(pdma->dev,
   "%s: CAPABILITY ( %s%s)\n", dma_chan_name(&chan->dma_chan),
   dma_has_cap(DMA_XOR, dma_dev->cap_mask) ? "XOR " : "",
   dma_has_cap(DMA_PQ, dma_dev->cap_mask) ? "PQ " : "");

 return 0;
}
