
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {TYPE_1__* worker_groups; } ;
struct TYPE_2__ {struct TYPE_2__* workers; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void free_thread_groups(struct r5conf *conf)
{
 if (conf->worker_groups)
  kfree(conf->worker_groups[0].workers);
 kfree(conf->worker_groups);
 conf->worker_groups = ((void*)0);
}
