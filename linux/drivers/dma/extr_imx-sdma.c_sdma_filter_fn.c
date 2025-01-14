
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_dma_data {int dummy; } ;
struct sdma_channel {struct imx_dma_data data; } ;
struct dma_chan {struct imx_dma_data* private; } ;


 int imx_dma_is_general_purpose (struct dma_chan*) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;

__attribute__((used)) static bool sdma_filter_fn(struct dma_chan *chan, void *fn_param)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);
 struct imx_dma_data *data = fn_param;

 if (!imx_dma_is_general_purpose(chan))
  return 0;

 sdmac->data = *data;
 chan->private = &sdmac->data;

 return 1;
}
