
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_chan {int * device; } ;
struct coh901318_filter_args {scalar_t__ ch_nr; TYPE_1__* base; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int dma_slave; } ;


 TYPE_2__* to_coh901318_chan (struct dma_chan*) ;

__attribute__((used)) static bool coh901318_filter_base_and_id(struct dma_chan *chan, void *data)
{
 struct coh901318_filter_args *args = data;

 if (&args->base->dma_slave == chan->device &&
     args->ch_nr == to_coh901318_chan(chan)->id)
  return 1;

 return 0;
}
