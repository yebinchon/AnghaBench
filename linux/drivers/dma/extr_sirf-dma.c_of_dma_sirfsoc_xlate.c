
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sirfsoc_dma {TYPE_1__* channels; } ;
struct of_phandle_args {unsigned int* args; } ;
struct of_dma {struct sirfsoc_dma* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int chan; } ;


 unsigned int SIRFSOC_DMA_CHANNELS ;
 struct dma_chan* dma_get_slave_channel (int *) ;

__attribute__((used)) static struct dma_chan *of_dma_sirfsoc_xlate(struct of_phandle_args *dma_spec,
 struct of_dma *ofdma)
{
 struct sirfsoc_dma *sdma = ofdma->of_dma_data;
 unsigned int request = dma_spec->args[0];

 if (request >= SIRFSOC_DMA_CHANNELS)
  return ((void*)0);

 return dma_get_slave_channel(&sdma->channels[request].chan);
}
