
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {unsigned int chan_id; TYPE_1__* device; } ;
struct TYPE_2__ {unsigned int dev_id; } ;


 unsigned int SIRFSOC_DMA_CHANNELS ;

bool sirfsoc_dma_filter_id(struct dma_chan *chan, void *chan_id)
{
 unsigned int ch_nr = (unsigned int) chan_id;

 if (ch_nr == chan->chan_id +
  chan->device->dev_id * SIRFSOC_DMA_CHANNELS)
  return 1;

 return 0;
}
