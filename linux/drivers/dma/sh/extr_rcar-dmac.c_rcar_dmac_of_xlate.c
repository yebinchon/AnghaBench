
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac_chan {int mid_rid; } ;
struct of_phandle_args {int args_count; int * args; } ;
struct of_dma {int of_node; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 struct dma_chan* __dma_request_channel (int *,int ,struct of_phandle_args*,int ) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int rcar_dmac_chan_filter ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *rcar_dmac_of_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct rcar_dmac_chan *rchan;
 struct dma_chan *chan;
 dma_cap_mask_t mask;

 if (dma_spec->args_count != 1)
  return ((void*)0);


 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);

 chan = __dma_request_channel(&mask, rcar_dmac_chan_filter, dma_spec,
         ofdma->of_node);
 if (!chan)
  return ((void*)0);

 rchan = to_rcar_dmac_chan(chan);
 rchan->mid_rid = dma_spec->args[0];

 return chan;
}
