
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct of_dma {int of_node; struct mmp_tdma_device* of_dma_data; } ;
struct mmp_tdma_filter_param {scalar_t__ chan_id; } ;
struct TYPE_2__ {int cap_mask; } ;
struct mmp_tdma_device {TYPE_1__ device; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 scalar_t__ TDMA_CHANNEL_NUM ;
 struct dma_chan* __dma_request_channel (int *,int ,struct mmp_tdma_filter_param*,int ) ;
 int mmp_tdma_filter_fn ;

__attribute__((used)) static struct dma_chan *mmp_tdma_xlate(struct of_phandle_args *dma_spec,
          struct of_dma *ofdma)
{
 struct mmp_tdma_device *tdev = ofdma->of_dma_data;
 dma_cap_mask_t mask = tdev->device.cap_mask;
 struct mmp_tdma_filter_param param;

 if (dma_spec->args_count != 1)
  return ((void*)0);

 param.chan_id = dma_spec->args[0];

 if (param.chan_id >= TDMA_CHANNEL_NUM)
  return ((void*)0);

 return __dma_request_channel(&mask, mmp_tdma_filter_fn, &param,
         ofdma->of_node);
}
