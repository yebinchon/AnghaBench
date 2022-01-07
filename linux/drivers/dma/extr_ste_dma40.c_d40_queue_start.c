
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d40_desc {int dummy; } ;
struct d40_chan {int busy; TYPE_1__* base; } ;
struct TYPE_2__ {int dev; } ;


 int d40_desc_load (struct d40_chan*,struct d40_desc*) ;
 int d40_desc_remove (struct d40_desc*) ;
 int d40_desc_submit (struct d40_chan*,struct d40_desc*) ;
 struct d40_desc* d40_first_queued (struct d40_chan*) ;
 int d40_start (struct d40_chan*) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static struct d40_desc *d40_queue_start(struct d40_chan *d40c)
{
 struct d40_desc *d40d;
 int err;


 d40d = d40_first_queued(d40c);

 if (d40d != ((void*)0)) {
  if (!d40c->busy) {
   d40c->busy = 1;
   pm_runtime_get_sync(d40c->base->dev);
  }


  d40_desc_remove(d40d);


  d40_desc_submit(d40c, d40d);


  d40_desc_load(d40c, d40d);


  err = d40_start(d40c);

  if (err)
   return ((void*)0);
 }

 return d40d;
}
