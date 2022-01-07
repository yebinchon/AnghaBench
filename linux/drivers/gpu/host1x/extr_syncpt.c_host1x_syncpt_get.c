
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {int dummy; } ;
struct host1x {struct host1x_syncpt* syncpt; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int nb_pts; } ;



struct host1x_syncpt *host1x_syncpt_get(struct host1x *host, unsigned int id)
{
 if (id >= host->info->nb_pts)
  return ((void*)0);

 return host->syncpt + id;
}
