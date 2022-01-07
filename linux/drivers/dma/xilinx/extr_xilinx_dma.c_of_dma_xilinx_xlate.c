
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xilinx_dma_device {int nr_channels; TYPE_1__** chan; } ;
struct of_phandle_args {int* args; } ;
struct of_dma {struct xilinx_dma_device* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int common; } ;


 struct dma_chan* dma_get_slave_channel (int *) ;

__attribute__((used)) static struct dma_chan *of_dma_xilinx_xlate(struct of_phandle_args *dma_spec,
      struct of_dma *ofdma)
{
 struct xilinx_dma_device *xdev = ofdma->of_dma_data;
 int chan_id = dma_spec->args[0];

 if (chan_id >= xdev->nr_channels || !xdev->chan[chan_id])
  return ((void*)0);

 return dma_get_slave_channel(&xdev->chan[chan_id]->common);
}
