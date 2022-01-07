
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt_base {int requested; } ;
struct host1x {TYPE_1__* info; struct host1x_syncpt_base* bases; } ;
struct TYPE_2__ {unsigned int nb_bases; } ;



__attribute__((used)) static struct host1x_syncpt_base *
host1x_syncpt_base_request(struct host1x *host)
{
 struct host1x_syncpt_base *bases = host->bases;
 unsigned int i;

 for (i = 0; i < host->info->nb_bases; i++)
  if (!bases[i].requested)
   break;

 if (i >= host->info->nb_bases)
  return ((void*)0);

 bases[i].requested = 1;
 return &bases[i];
}
