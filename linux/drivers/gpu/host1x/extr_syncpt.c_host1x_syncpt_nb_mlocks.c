
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x {TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int nb_mlocks; } ;



unsigned int host1x_syncpt_nb_mlocks(struct host1x *host)
{
 return host->info->nb_mlocks;
}
