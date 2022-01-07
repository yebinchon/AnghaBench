
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_th_driver {int (* irq ) (TYPE_2__*) ;} ;
struct intel_th {int num_thdevs; TYPE_2__** thdev; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int driver; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ dev; } ;


 scalar_t__ INTEL_TH_OUTPUT ;
 int IRQ_NONE ;
 int pr_warn_ratelimited (char*) ;
 int stub1 (TYPE_2__*) ;
 struct intel_th_driver* to_intel_th_driver (int ) ;

__attribute__((used)) static irqreturn_t intel_th_irq(int irq, void *data)
{
 struct intel_th *th = data;
 irqreturn_t ret = IRQ_NONE;
 struct intel_th_driver *d;
 int i;

 for (i = 0; i < th->num_thdevs; i++) {
  if (th->thdev[i]->type != INTEL_TH_OUTPUT)
   continue;

  d = to_intel_th_driver(th->thdev[i]->dev.driver);
  if (d && d->irq)
   ret |= d->irq(th->thdev[i]);
 }

 if (ret == IRQ_NONE)
  pr_warn_ratelimited("nobody cared for irq\n");

 return ret;
}
