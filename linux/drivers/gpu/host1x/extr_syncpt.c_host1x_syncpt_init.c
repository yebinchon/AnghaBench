
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt_base {unsigned int id; } ;
struct host1x_syncpt {unsigned int id; struct host1x* host; } ;
struct host1x {int nop_sp; struct host1x_syncpt_base* bases; struct host1x_syncpt* syncpt; int syncpt_mutex; TYPE_1__* info; int dev; } ;
struct TYPE_2__ {unsigned int nb_pts; unsigned int nb_bases; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (int ,unsigned int,int,int ) ;
 int host1x_hw_syncpt_assign_to_channel (struct host1x*,struct host1x_syncpt*,int *) ;
 int host1x_hw_syncpt_enable_protection (struct host1x*) ;
 int host1x_syncpt_alloc (struct host1x*,int *,int ) ;
 int host1x_syncpt_restore (struct host1x*) ;
 int mutex_init (int *) ;

int host1x_syncpt_init(struct host1x *host)
{
 struct host1x_syncpt_base *bases;
 struct host1x_syncpt *syncpt;
 unsigned int i;

 syncpt = devm_kcalloc(host->dev, host->info->nb_pts, sizeof(*syncpt),
         GFP_KERNEL);
 if (!syncpt)
  return -ENOMEM;

 bases = devm_kcalloc(host->dev, host->info->nb_bases, sizeof(*bases),
        GFP_KERNEL);
 if (!bases)
  return -ENOMEM;

 for (i = 0; i < host->info->nb_pts; i++) {
  syncpt[i].id = i;
  syncpt[i].host = host;






  host1x_hw_syncpt_assign_to_channel(host, &syncpt[i], ((void*)0));
 }

 for (i = 0; i < host->info->nb_bases; i++)
  bases[i].id = i;

 mutex_init(&host->syncpt_mutex);
 host->syncpt = syncpt;
 host->bases = bases;

 host1x_syncpt_restore(host);
 host1x_hw_syncpt_enable_protection(host);


 host->nop_sp = host1x_syncpt_alloc(host, ((void*)0), 0);
 if (!host->nop_sp)
  return -ENOMEM;

 return 0;
}
