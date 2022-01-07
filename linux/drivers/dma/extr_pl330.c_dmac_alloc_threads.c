
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl330_thread {int id; int free; struct pl330_dmac* dmac; } ;
struct TYPE_2__ {int num_chan; } ;
struct pl330_dmac {struct pl330_thread* manager; struct pl330_thread* channels; TYPE_1__ pcfg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int _reset_thread (struct pl330_thread*) ;
 struct pl330_thread* kcalloc (int,int,int ) ;

__attribute__((used)) static int dmac_alloc_threads(struct pl330_dmac *pl330)
{
 int chans = pl330->pcfg.num_chan;
 struct pl330_thread *thrd;
 int i;


 pl330->channels = kcalloc(1 + chans, sizeof(*thrd),
     GFP_KERNEL);
 if (!pl330->channels)
  return -ENOMEM;


 for (i = 0; i < chans; i++) {
  thrd = &pl330->channels[i];
  thrd->id = i;
  thrd->dmac = pl330;
  _reset_thread(thrd);
  thrd->free = 1;
 }


 thrd = &pl330->channels[chans];
 thrd->id = chans;
 thrd->dmac = pl330;
 thrd->free = 0;
 pl330->manager = thrd;

 return 0;
}
