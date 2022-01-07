
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_submit; } ;
struct zynqmp_dma_desc_sw {scalar_t__ src_p; scalar_t__ dst_p; struct zynqmp_dma_desc_ll* src_v; struct zynqmp_dma_desc_ll* dst_v; int node; TYPE_1__ async_tx; } ;
struct zynqmp_dma_desc_ll {int dummy; } ;
struct zynqmp_dma_chan {int idle; int desc_free_cnt; int desc_size; scalar_t__ desc_pool_p; scalar_t__ desc_pool_v; struct zynqmp_dma_desc_sw* sw_desc_pool; int dev; int free_list; int common; } ;
struct dma_chan {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ZYNQMP_DMA_DESC_SIZE (struct zynqmp_dma_chan*) ;
 int ZYNQMP_DMA_NUM_DESCS ;
 scalar_t__ dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct zynqmp_dma_desc_sw* kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int pm_runtime_get_sync (int ) ;
 struct zynqmp_dma_chan* to_chan (struct dma_chan*) ;
 int zynqmp_dma_tx_submit ;

__attribute__((used)) static int zynqmp_dma_alloc_chan_resources(struct dma_chan *dchan)
{
 struct zynqmp_dma_chan *chan = to_chan(dchan);
 struct zynqmp_dma_desc_sw *desc;
 int i, ret;

 ret = pm_runtime_get_sync(chan->dev);
 if (ret < 0)
  return ret;

 chan->sw_desc_pool = kcalloc(ZYNQMP_DMA_NUM_DESCS, sizeof(*desc),
         GFP_KERNEL);
 if (!chan->sw_desc_pool)
  return -ENOMEM;

 chan->idle = 1;
 chan->desc_free_cnt = ZYNQMP_DMA_NUM_DESCS;

 INIT_LIST_HEAD(&chan->free_list);

 for (i = 0; i < ZYNQMP_DMA_NUM_DESCS; i++) {
  desc = chan->sw_desc_pool + i;
  dma_async_tx_descriptor_init(&desc->async_tx, &chan->common);
  desc->async_tx.tx_submit = zynqmp_dma_tx_submit;
  list_add_tail(&desc->node, &chan->free_list);
 }

 chan->desc_pool_v = dma_alloc_coherent(chan->dev,
            (2 * chan->desc_size * ZYNQMP_DMA_NUM_DESCS),
            &chan->desc_pool_p, GFP_KERNEL);
 if (!chan->desc_pool_v)
  return -ENOMEM;

 for (i = 0; i < ZYNQMP_DMA_NUM_DESCS; i++) {
  desc = chan->sw_desc_pool + i;
  desc->src_v = (struct zynqmp_dma_desc_ll *) (chan->desc_pool_v +
     (i * ZYNQMP_DMA_DESC_SIZE(chan) * 2));
  desc->dst_v = (struct zynqmp_dma_desc_ll *) (desc->src_v + 1);
  desc->src_p = chan->desc_pool_p +
    (i * ZYNQMP_DMA_DESC_SIZE(chan) * 2);
  desc->dst_p = desc->src_p + ZYNQMP_DMA_DESC_SIZE(chan);
 }

 return ZYNQMP_DMA_NUM_DESCS;
}
