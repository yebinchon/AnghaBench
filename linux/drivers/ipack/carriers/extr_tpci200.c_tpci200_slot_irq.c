
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_irq {int arg; int (* handler ) (int ) ;} ;
typedef int irqreturn_t ;


 int ENODEV ;
 int stub1 (int ) ;

__attribute__((used)) static irqreturn_t tpci200_slot_irq(struct slot_irq *slot_irq)
{
 irqreturn_t ret;

 if (!slot_irq)
  return -ENODEV;
 ret = slot_irq->handler(slot_irq->arg);

 return ret;
}
