
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_promise {size_t len; int cfg; void* dst; void* src; } ;
struct dma_slave_config {int dst_addr_width; int src_addr_width; int dst_maxburst; int src_maxburst; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef void* dma_addr_t ;


 int GFP_NOWAIT ;
 int SUN4I_DMA_CFG_DST_BURST_LENGTH (int) ;
 int SUN4I_DMA_CFG_DST_DATA_WIDTH (int) ;
 int SUN4I_DMA_CFG_LOADING ;
 int SUN4I_DMA_CFG_SRC_BURST_LENGTH (int) ;
 int SUN4I_DMA_CFG_SRC_DATA_WIDTH (int) ;
 int SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN ;
 int chan2dev (struct dma_chan*) ;
 int convert_burst (int ) ;
 int convert_buswidth (int ) ;
 int dev_dbg (int ,char*,int ,int ,int ,int ) ;
 int kfree (struct sun4i_dma_promise*) ;
 struct sun4i_dma_promise* kzalloc (int,int ) ;
 int sanitize_config (struct dma_slave_config*,int) ;

__attribute__((used)) static struct sun4i_dma_promise *
generate_ndma_promise(struct dma_chan *chan, dma_addr_t src, dma_addr_t dest,
        size_t len, struct dma_slave_config *sconfig,
        enum dma_transfer_direction direction)
{
 struct sun4i_dma_promise *promise;
 int ret;

 ret = sanitize_config(sconfig, direction);
 if (ret)
  return ((void*)0);

 promise = kzalloc(sizeof(*promise), GFP_NOWAIT);
 if (!promise)
  return ((void*)0);

 promise->src = src;
 promise->dst = dest;
 promise->len = len;
 promise->cfg = SUN4I_DMA_CFG_LOADING |
  SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN;

 dev_dbg(chan2dev(chan),
  "src burst %d, dst burst %d, src buswidth %d, dst buswidth %d",
  sconfig->src_maxburst, sconfig->dst_maxburst,
  sconfig->src_addr_width, sconfig->dst_addr_width);


 ret = convert_burst(sconfig->src_maxburst);
 if (ret < 0)
  goto fail;
 promise->cfg |= SUN4I_DMA_CFG_SRC_BURST_LENGTH(ret);


 ret = convert_burst(sconfig->dst_maxburst);
 if (ret < 0)
  goto fail;
 promise->cfg |= SUN4I_DMA_CFG_DST_BURST_LENGTH(ret);


 ret = convert_buswidth(sconfig->src_addr_width);
 if (ret < 0)
  goto fail;
 promise->cfg |= SUN4I_DMA_CFG_SRC_DATA_WIDTH(ret);


 ret = convert_buswidth(sconfig->dst_addr_width);
 if (ret < 0)
  goto fail;
 promise->cfg |= SUN4I_DMA_CFG_DST_DATA_WIDTH(ret);

 return promise;

fail:
 kfree(promise);
 return ((void*)0);
}
