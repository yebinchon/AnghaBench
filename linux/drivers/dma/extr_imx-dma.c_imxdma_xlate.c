
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int args_count; int * args; } ;
struct of_dma {struct imxdma_engine* of_dma_data; } ;
struct imxdma_filter_data {int request; struct imxdma_engine* imxdma; } ;
struct TYPE_2__ {int cap_mask; } ;
struct imxdma_engine {TYPE_1__ dma_device; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* dma_request_channel (int ,int ,struct imxdma_filter_data*) ;
 int imxdma_filter_fn ;

__attribute__((used)) static struct dma_chan *imxdma_xlate(struct of_phandle_args *dma_spec,
      struct of_dma *ofdma)
{
 int count = dma_spec->args_count;
 struct imxdma_engine *imxdma = ofdma->of_dma_data;
 struct imxdma_filter_data fdata = {
  .imxdma = imxdma,
 };

 if (count != 1)
  return ((void*)0);

 fdata.request = dma_spec->args[0];

 return dma_request_channel(imxdma->dma_device.cap_mask,
     imxdma_filter_fn, &fdata);
}
