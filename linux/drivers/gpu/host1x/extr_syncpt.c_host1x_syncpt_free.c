
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {int client_managed; TYPE_1__* host; int * name; int * client; int * base; } ;
struct TYPE_2__ {int syncpt_mutex; } ;


 int host1x_syncpt_base_free (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void host1x_syncpt_free(struct host1x_syncpt *sp)
{
 if (!sp)
  return;

 mutex_lock(&sp->host->syncpt_mutex);

 host1x_syncpt_base_free(sp->base);
 kfree(sp->name);
 sp->base = ((void*)0);
 sp->client = ((void*)0);
 sp->name = ((void*)0);
 sp->client_managed = 0;

 mutex_unlock(&sp->host->syncpt_mutex);
}
