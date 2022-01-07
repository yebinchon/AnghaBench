
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cap_mask; } ;
struct sdma_engine {TYPE_1__ dma_device; } ;
struct of_phandle_args {int args_count; int * args; } ;
struct of_dma {int of_node; struct sdma_engine* of_dma_data; } ;
struct imx_dma_data {scalar_t__ dma_request2; int priority; int peripheral_type; int dma_request; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 struct dma_chan* __dma_request_channel (int *,int ,struct imx_dma_data*,int ) ;
 int sdma_filter_fn ;

__attribute__((used)) static struct dma_chan *sdma_xlate(struct of_phandle_args *dma_spec,
       struct of_dma *ofdma)
{
 struct sdma_engine *sdma = ofdma->of_dma_data;
 dma_cap_mask_t mask = sdma->dma_device.cap_mask;
 struct imx_dma_data data;

 if (dma_spec->args_count != 3)
  return ((void*)0);

 data.dma_request = dma_spec->args[0];
 data.peripheral_type = dma_spec->args[1];
 data.priority = dma_spec->args[2];







 data.dma_request2 = 0;

 return __dma_request_channel(&mask, sdma_filter_fn, &data,
         ofdma->of_node);
}
