
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct host1x {int intr_syncpt_irq; int dev; TYPE_3__* syncpt; TYPE_1__* info; } ;
struct TYPE_5__ {int work; } ;
struct TYPE_6__ {TYPE_2__ intr; } ;
struct TYPE_4__ {unsigned int nb_pts; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int IRQF_SHARED ;
 int WARN_ON (int) ;
 int devm_request_irq (int ,int ,int ,int ,char*,struct host1x*) ;
 int host1x_hw_intr_disable_all_syncpt_intrs (struct host1x*) ;
 int intr_hw_init (struct host1x*,int ) ;
 int syncpt_thresh_isr ;

__attribute__((used)) static int
_host1x_intr_init_host_sync(struct host1x *host, u32 cpm,
       void (*syncpt_thresh_work)(struct work_struct *))
{
 unsigned int i;
 int err;

 host1x_hw_intr_disable_all_syncpt_intrs(host);

 for (i = 0; i < host->info->nb_pts; i++)
  INIT_WORK(&host->syncpt[i].intr.work, syncpt_thresh_work);

 err = devm_request_irq(host->dev, host->intr_syncpt_irq,
          syncpt_thresh_isr, IRQF_SHARED,
          "host1x_syncpt", host);
 if (err < 0) {
  WARN_ON(1);
  return err;
 }

 intr_hw_init(host, cpm);

 return 0;
}
