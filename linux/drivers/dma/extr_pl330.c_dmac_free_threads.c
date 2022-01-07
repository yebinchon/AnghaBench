
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl330_thread {int dummy; } ;
struct TYPE_2__ {int num_chan; } ;
struct pl330_dmac {struct pl330_thread* channels; TYPE_1__ pcfg; } ;


 int kfree (struct pl330_thread*) ;
 int pl330_release_channel (struct pl330_thread*) ;

__attribute__((used)) static int dmac_free_threads(struct pl330_dmac *pl330)
{
 struct pl330_thread *thrd;
 int i;


 for (i = 0; i < pl330->pcfg.num_chan; i++) {
  thrd = &pl330->channels[i];
  pl330_release_channel(thrd);
 }


 kfree(pl330->channels);

 return 0;
}
