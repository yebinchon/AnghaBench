
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct of_dma {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_2__ {scalar_t__ hw_req; } ;


 int DMA_SLAVE ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,void*) ;
 int shdma_chan_filter ;
 TYPE_1__* to_shdma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *shdma_of_xlate(struct of_phandle_args *dma_spec,
           struct of_dma *ofdma)
{
 u32 id = dma_spec->args[0];
 dma_cap_mask_t mask;
 struct dma_chan *chan;

 if (dma_spec->args_count != 1)
  return ((void*)0);

 dma_cap_zero(mask);

 dma_cap_set(DMA_SLAVE, mask);

 chan = dma_request_channel(mask, shdma_chan_filter,
       (void *)(uintptr_t)id);
 if (chan)
  to_shdma_chan(chan)->hw_req = id;

 return chan;
}
