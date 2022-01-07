
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intc_irqpin_irq {int domain_irq; int hw_irq; int requested_irq; TYPE_2__* p; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,char*,int ,int ,int ) ;

__attribute__((used)) static void intc_irqpin_dbg(struct intc_irqpin_irq *i, char *str)
{
 dev_dbg(&i->p->pdev->dev, "%s (%d:%d:%d)\n",
  str, i->requested_irq, i->hw_irq, i->domain_irq);
}
