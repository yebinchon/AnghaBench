
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {char* name; int client_managed; int * base; struct host1x_client* client; int id; } ;
struct host1x_client {int dev; } ;
struct host1x {int syncpt_mutex; TYPE_1__* info; struct host1x_syncpt* syncpt; } ;
struct TYPE_2__ {unsigned int nb_pts; } ;


 int GFP_KERNEL ;
 unsigned long HOST1X_SYNCPT_CLIENT_MANAGED ;
 unsigned long HOST1X_SYNCPT_HAS_BASE ;
 int * dev_name (int ) ;
 int host1x_syncpt_base_free (int *) ;
 int * host1x_syncpt_base_request (struct host1x*) ;
 char* kasprintf (int ,char*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct host1x_syncpt *host1x_syncpt_alloc(struct host1x *host,
       struct host1x_client *client,
       unsigned long flags)
{
 struct host1x_syncpt *sp = host->syncpt;
 unsigned int i;
 char *name;

 mutex_lock(&host->syncpt_mutex);

 for (i = 0; i < host->info->nb_pts && sp->name; i++, sp++)
  ;

 if (i >= host->info->nb_pts)
  goto unlock;

 if (flags & HOST1X_SYNCPT_HAS_BASE) {
  sp->base = host1x_syncpt_base_request(host);
  if (!sp->base)
   goto unlock;
 }

 name = kasprintf(GFP_KERNEL, "%02u-%s", sp->id,
    client ? dev_name(client->dev) : ((void*)0));
 if (!name)
  goto free_base;

 sp->client = client;
 sp->name = name;

 if (flags & HOST1X_SYNCPT_CLIENT_MANAGED)
  sp->client_managed = 1;
 else
  sp->client_managed = 0;

 mutex_unlock(&host->syncpt_mutex);
 return sp;

free_base:
 host1x_syncpt_base_free(sp->base);
 sp->base = ((void*)0);
unlock:
 mutex_unlock(&host->syncpt_mutex);
 return ((void*)0);
}
