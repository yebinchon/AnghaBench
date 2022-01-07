
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct of_phandle_args {int args_count; int* args; } ;
struct of_dma {int of_node; struct jz4780_dma_dev* of_dma_data; } ;
struct jz4780_dma_filter_data {int transfer_type; int channel; } ;
struct TYPE_6__ {int dev; int cap_mask; } ;
struct jz4780_dma_dev {int chan_reserved; TYPE_4__* chan; TYPE_2__ dma_device; TYPE_1__* soc_data; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_7__ {int chan; } ;
struct TYPE_8__ {int transfer_type; TYPE_3__ vchan; } ;
struct TYPE_5__ {int nb_channels; } ;


 int BIT (int) ;
 struct dma_chan* __dma_request_channel (int *,int ,struct jz4780_dma_filter_data*,int ) ;
 int dev_err (int ,char*,int) ;
 struct dma_chan* dma_get_slave_channel (int *) ;
 int jz4780_dma_filter_fn ;

__attribute__((used)) static struct dma_chan *jz4780_of_dma_xlate(struct of_phandle_args *dma_spec,
 struct of_dma *ofdma)
{
 struct jz4780_dma_dev *jzdma = ofdma->of_dma_data;
 dma_cap_mask_t mask = jzdma->dma_device.cap_mask;
 struct jz4780_dma_filter_data data;

 if (dma_spec->args_count != 2)
  return ((void*)0);

 data.transfer_type = dma_spec->args[0];
 data.channel = dma_spec->args[1];

 if (data.channel > -1) {
  if (data.channel >= jzdma->soc_data->nb_channels) {
   dev_err(jzdma->dma_device.dev,
    "device requested non-existent channel %u\n",
    data.channel);
   return ((void*)0);
  }


  if (!(jzdma->chan_reserved & BIT(data.channel))) {
   dev_err(jzdma->dma_device.dev,
    "device requested unreserved channel %u\n",
    data.channel);
   return ((void*)0);
  }

  jzdma->chan[data.channel].transfer_type = data.transfer_type;

  return dma_get_slave_channel(
   &jzdma->chan[data.channel].vchan.chan);
 } else {
  return __dma_request_channel(&mask, jz4780_dma_filter_fn, &data,
          ofdma->of_node);
 }
}
