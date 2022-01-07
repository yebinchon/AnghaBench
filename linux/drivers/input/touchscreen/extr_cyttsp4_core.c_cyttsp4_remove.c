
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct cyttsp4 {TYPE_1__* cpdata; int irq; int startup_work; int md; struct device* dev; } ;
struct TYPE_2__ {int (* init ) (TYPE_1__*,int ,struct device*) ;} ;


 int cancel_work_sync (int *) ;
 int cyttsp4_free_si_ptrs (struct cyttsp4*) ;
 int cyttsp4_mt_release (int *) ;
 int cyttsp4_stop_wd_timer (struct cyttsp4*) ;
 int free_irq (int ,struct cyttsp4*) ;
 int kfree (struct cyttsp4*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_suspend (struct device*) ;
 int stub1 (TYPE_1__*,int ,struct device*) ;

int cyttsp4_remove(struct cyttsp4 *cd)
{
 struct device *dev = cd->dev;

 cyttsp4_mt_release(&cd->md);





 pm_runtime_suspend(dev);
 pm_runtime_disable(dev);

 cancel_work_sync(&cd->startup_work);

 cyttsp4_stop_wd_timer(cd);

 free_irq(cd->irq, cd);
 if (cd->cpdata->init)
  cd->cpdata->init(cd->cpdata, 0, dev);
 cyttsp4_free_si_ptrs(cd);
 kfree(cd);
 return 0;
}
