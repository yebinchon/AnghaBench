
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl330_dmac {unsigned int num_peripherals; TYPE_1__* peripherals; } ;
struct of_phandle_args {int args_count; unsigned int* args; } ;
struct of_dma {struct pl330_dmac* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int chan; } ;


 struct dma_chan* dma_get_slave_channel (int *) ;

__attribute__((used)) static struct dma_chan *of_dma_pl330_xlate(struct of_phandle_args *dma_spec,
      struct of_dma *ofdma)
{
 int count = dma_spec->args_count;
 struct pl330_dmac *pl330 = ofdma->of_dma_data;
 unsigned int chan_id;

 if (!pl330)
  return ((void*)0);

 if (count != 1)
  return ((void*)0);

 chan_id = dma_spec->args[0];
 if (chan_id >= pl330->num_peripherals)
  return ((void*)0);

 return dma_get_slave_channel(&pl330->peripherals[chan_id].chan);
}
