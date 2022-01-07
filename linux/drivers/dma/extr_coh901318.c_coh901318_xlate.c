
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int * args; } ;
struct of_dma {int of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct coh901318_filter_args {int ch_nr; int base; } ;
typedef int dma_cap_mask_t ;


 int DMA_SLAVE ;
 int coh901318_filter_base_and_id ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,struct coh901318_filter_args*) ;

__attribute__((used)) static struct dma_chan *coh901318_xlate(struct of_phandle_args *dma_spec,
     struct of_dma *ofdma)
{
 struct coh901318_filter_args args = {
  .base = ofdma->of_dma_data,
  .ch_nr = dma_spec->args[0],
 };
 dma_cap_mask_t cap;
 dma_cap_zero(cap);
 dma_cap_set(DMA_SLAVE, cap);

 return dma_request_channel(cap, coh901318_filter_base_and_id, &args);
}
