
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_channel {TYPE_1__* sdma; scalar_t__ event_id1; scalar_t__ event_id0; int peripheral_type; } ;
struct imx_dma_data {int priority; scalar_t__ dma_request2; scalar_t__ dma_request; int peripheral_type; } ;
struct dma_chan {struct imx_dma_data* private; } ;
struct TYPE_2__ {int clk_ipg; int clk_ahb; int dev; } ;





 int IMX_DMATYPE_MEMORY ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int sdma_get_pc (struct sdma_channel*,int ) ;
 int sdma_set_channel_priority (struct sdma_channel*,int) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;

__attribute__((used)) static int sdma_alloc_chan_resources(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);
 struct imx_dma_data *data = chan->private;
 struct imx_dma_data mem_data;
 int prio, ret;
 if (!data) {
  dev_dbg(sdmac->sdma->dev, "MEMCPY in case?\n");
  mem_data.priority = 2;
  mem_data.peripheral_type = IMX_DMATYPE_MEMORY;
  mem_data.dma_request = 0;
  mem_data.dma_request2 = 0;
  data = &mem_data;

  sdma_get_pc(sdmac, IMX_DMATYPE_MEMORY);
 }

 switch (data->priority) {
 case 130:
  prio = 3;
  break;
 case 128:
  prio = 2;
  break;
 case 129:
 default:
  prio = 1;
  break;
 }

 sdmac->peripheral_type = data->peripheral_type;
 sdmac->event_id0 = data->dma_request;
 sdmac->event_id1 = data->dma_request2;

 ret = clk_enable(sdmac->sdma->clk_ipg);
 if (ret)
  return ret;
 ret = clk_enable(sdmac->sdma->clk_ahb);
 if (ret)
  goto disable_clk_ipg;

 ret = sdma_set_channel_priority(sdmac, prio);
 if (ret)
  goto disable_clk_ahb;

 return 0;

disable_clk_ahb:
 clk_disable(sdmac->sdma->clk_ahb);
disable_clk_ipg:
 clk_disable(sdmac->sdma->clk_ipg);
 return ret;
}
