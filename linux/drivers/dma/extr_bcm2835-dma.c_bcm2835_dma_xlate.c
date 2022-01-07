
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {int * args; } ;
struct of_dma {struct bcm2835_dmadev* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct bcm2835_dmadev {int ddev; } ;
struct TYPE_2__ {int dreq; } ;


 struct dma_chan* dma_get_any_slave_channel (int *) ;
 TYPE_1__* to_bcm2835_dma_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *bcm2835_dma_xlate(struct of_phandle_args *spec,
        struct of_dma *ofdma)
{
 struct bcm2835_dmadev *d = ofdma->of_dma_data;
 struct dma_chan *chan;

 chan = dma_get_any_slave_channel(&d->ddev);
 if (!chan)
  return ((void*)0);


 to_bcm2835_dma_chan(chan)->dreq = spec->args[0];

 return chan;
}
