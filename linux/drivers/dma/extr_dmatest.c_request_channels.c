
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmatest_params {scalar_t__ max_channels; } ;
struct dmatest_info {scalar_t__ nr_channels; struct dmatest_params params; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
typedef int dma_cap_mask_t ;


 int dma_cap_set (int,int ) ;
 int dma_cap_zero (int ) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_channel (int ,int ,struct dmatest_params*) ;
 scalar_t__ dmatest_add_channel (struct dmatest_info*,struct dma_chan*) ;
 int filter ;

__attribute__((used)) static void request_channels(struct dmatest_info *info,
        enum dma_transaction_type type)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(type, mask);
 for (;;) {
  struct dmatest_params *params = &info->params;
  struct dma_chan *chan;

  chan = dma_request_channel(mask, filter, params);
  if (chan) {
   if (dmatest_add_channel(info, chan)) {
    dma_release_channel(chan);
    break;
   }
  } else
   break;
  if (params->max_channels &&
      info->nr_channels >= params->max_channels)
   break;
 }
}
