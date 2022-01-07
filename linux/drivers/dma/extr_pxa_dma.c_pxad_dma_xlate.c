
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxad_device {int slave; } ;
struct of_phandle_args {int * args; } ;
struct of_dma {struct pxad_device* of_dma_data; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int prio; int drcmr; } ;


 struct dma_chan* dma_get_any_slave_channel (int *) ;
 TYPE_1__* to_pxad_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_chan *pxad_dma_xlate(struct of_phandle_args *dma_spec,
        struct of_dma *ofdma)
{
 struct pxad_device *d = ofdma->of_dma_data;
 struct dma_chan *chan;

 chan = dma_get_any_slave_channel(&d->slave);
 if (!chan)
  return ((void*)0);

 to_pxad_chan(chan)->drcmr = dma_spec->args[0];
 to_pxad_chan(chan)->prio = dma_spec->args[1];

 return chan;
}
