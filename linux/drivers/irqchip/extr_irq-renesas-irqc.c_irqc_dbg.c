
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irqc_irq {int hw_irq; int requested_irq; TYPE_1__* p; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,char*,int ,int ) ;

__attribute__((used)) static void irqc_dbg(struct irqc_irq *i, char *str)
{
 dev_dbg(i->p->dev, "%s (%d:%d)\n", str, i->requested_irq, i->hw_irq);
}
