
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_promise {size_t len; int cfg; void* dst; void* src; } ;
struct dma_slave_config {int dst_addr_width; int src_addr_width; int dst_maxburst; int src_maxburst; } ;
struct dma_chan {int dummy; } ;
typedef void* dma_addr_t ;


 int GFP_NOWAIT ;
 int SUN4I_DDMA_CFG_BYTE_COUNT_MODE_REMAIN ;
 int SUN4I_DMA_CFG_DST_BURST_LENGTH (int) ;
 int SUN4I_DMA_CFG_DST_DATA_WIDTH (int) ;
 int SUN4I_DMA_CFG_LOADING ;
 int SUN4I_DMA_CFG_SRC_BURST_LENGTH (int) ;
 int SUN4I_DMA_CFG_SRC_DATA_WIDTH (int) ;
 int convert_burst (int ) ;
 int convert_buswidth (int ) ;
 int kfree (struct sun4i_dma_promise*) ;
 struct sun4i_dma_promise* kzalloc (int,int ) ;

__attribute__((used)) static struct sun4i_dma_promise *
generate_ddma_promise(struct dma_chan *chan, dma_addr_t src, dma_addr_t dest,
        size_t len, struct dma_slave_config *sconfig)
{
 struct sun4i_dma_promise *promise;
 int ret;

 promise = kzalloc(sizeof(*promise), GFP_NOWAIT);
 if (!promise)
  return ((void*)0);

 promise->src = src;
 promise->dst = dest;
 promise->len = len;
 promise->cfg = SUN4I_DMA_CFG_LOADING |
  SUN4I_DDMA_CFG_BYTE_COUNT_MODE_REMAIN;


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
