
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct host1x {TYPE_3__* syncpt; TYPE_1__* info; int intr_syncpt_irq; int dev; } ;
struct TYPE_5__ {int work; } ;
struct TYPE_6__ {TYPE_2__ intr; } ;
struct TYPE_4__ {unsigned int nb_pts; } ;


 int cancel_work_sync (int *) ;
 int devm_free_irq (int ,int ,struct host1x*) ;

__attribute__((used)) static int _host1x_free_syncpt_irq(struct host1x *host)
{
 unsigned int i;

 devm_free_irq(host->dev, host->intr_syncpt_irq, host);

 for (i = 0; i < host->info->nb_pts; i++)
  cancel_work_sync(&host->syncpt[i].intr.work);

 return 0;
}
