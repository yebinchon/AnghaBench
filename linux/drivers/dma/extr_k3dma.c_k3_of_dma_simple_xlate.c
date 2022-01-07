
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_phandle_args {unsigned int* args; } ;
struct of_dma {struct k3_dma_dev* of_dma_data; } ;
struct k3_dma_dev {unsigned int dma_requests; TYPE_2__* chans; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int chan; } ;
struct TYPE_4__ {TYPE_1__ vc; } ;


 struct dma_chan* dma_get_slave_channel (int *) ;

__attribute__((used)) static struct dma_chan *k3_of_dma_simple_xlate(struct of_phandle_args *dma_spec,
      struct of_dma *ofdma)
{
 struct k3_dma_dev *d = ofdma->of_dma_data;
 unsigned int request = dma_spec->args[0];

 if (request >= d->dma_requests)
  return ((void*)0);

 return dma_get_slave_channel(&(d->chans[request].vc.chan));
}
