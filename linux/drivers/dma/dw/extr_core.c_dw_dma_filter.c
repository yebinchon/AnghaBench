
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_dma_slave {scalar_t__ dma_dev; } ;
struct dw_dma_chan {int dws; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int memcpy (int *,struct dw_dma_slave*,int) ;
 struct dw_dma_chan* to_dw_dma_chan (struct dma_chan*) ;

bool dw_dma_filter(struct dma_chan *chan, void *param)
{
 struct dw_dma_chan *dwc = to_dw_dma_chan(chan);
 struct dw_dma_slave *dws = param;

 if (dws->dma_dev != chan->device->dev)
  return 0;


 memcpy(&dwc->dws, dws, sizeof(struct dw_dma_slave));

 return 1;
}
