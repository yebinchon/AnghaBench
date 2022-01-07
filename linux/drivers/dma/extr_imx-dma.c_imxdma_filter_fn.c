
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imxdma_filter_data {int request; TYPE_2__* imxdma; } ;
struct imxdma_channel {int dma_request; } ;
struct dma_chan {int * private; TYPE_1__* device; } ;
struct TYPE_4__ {scalar_t__ dev; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 struct imxdma_channel* to_imxdma_chan (struct dma_chan*) ;

__attribute__((used)) static bool imxdma_filter_fn(struct dma_chan *chan, void *param)
{
 struct imxdma_filter_data *fdata = param;
 struct imxdma_channel *imxdma_chan = to_imxdma_chan(chan);

 if (chan->device->dev != fdata->imxdma->dev)
  return 0;

 imxdma_chan->dma_request = fdata->request;
 chan->private = ((void*)0);

 return 1;
}
