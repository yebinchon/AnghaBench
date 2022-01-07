
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int (* clear_penirq ) () ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int stub1 () ;
 scalar_t__ tsc2007_is_pen_down (struct tsc2007*) ;

__attribute__((used)) static irqreturn_t tsc2007_hard_irq(int irq, void *handle)
{
 struct tsc2007 *ts = handle;

 if (tsc2007_is_pen_down(ts))
  return IRQ_WAKE_THREAD;

 if (ts->clear_penirq)
  ts->clear_penirq();

 return IRQ_HANDLED;
}
