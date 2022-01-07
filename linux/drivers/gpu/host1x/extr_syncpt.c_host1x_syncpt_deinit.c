
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {int name; } ;
struct host1x {TYPE_1__* info; struct host1x_syncpt* syncpt; } ;
struct TYPE_2__ {unsigned int nb_pts; } ;


 int kfree (int ) ;

void host1x_syncpt_deinit(struct host1x *host)
{
 struct host1x_syncpt *sp = host->syncpt;
 unsigned int i;

 for (i = 0; i < host->info->nb_pts; i++, sp++)
  kfree(sp->name);
}
