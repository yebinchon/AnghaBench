
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ pl330_update (void*) ;

__attribute__((used)) static irqreturn_t pl330_irq_handler(int irq, void *data)
{
 if (pl330_update(data))
  return IRQ_HANDLED;
 else
  return IRQ_NONE;
}
