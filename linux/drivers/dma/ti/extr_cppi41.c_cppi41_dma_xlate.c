
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int * args; } ;
struct of_dma_filter_info {int filter_fn; int dma_cap; } ;
struct of_dma {struct of_dma_filter_info* of_dma_data; } ;
struct dma_chan {int dummy; } ;


 struct dma_chan* dma_request_channel (int ,int ,int *) ;

__attribute__((used)) static struct dma_chan *cppi41_dma_xlate(struct of_phandle_args *dma_spec,
  struct of_dma *ofdma)
{
 int count = dma_spec->args_count;
 struct of_dma_filter_info *info = ofdma->of_dma_data;

 if (!info || !info->filter_fn)
  return ((void*)0);

 if (count != 2)
  return ((void*)0);

 return dma_request_channel(info->dma_cap, info->filter_fn,
   &dma_spec->args[0]);
}
