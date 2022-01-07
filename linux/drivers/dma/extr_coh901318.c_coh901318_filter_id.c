
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_2__ {unsigned long id; } ;


 TYPE_1__* to_coh901318_chan (struct dma_chan*) ;

bool coh901318_filter_id(struct dma_chan *chan, void *chan_id)
{
 unsigned long ch_nr = (unsigned long) chan_id;

 if (ch_nr == to_coh901318_chan(chan)->id)
  return 1;

 return 0;
}
