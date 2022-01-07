
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads7846 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ get_pendown_state (struct ads7846*) ;

__attribute__((used)) static irqreturn_t ads7846_hard_irq(int irq, void *handle)
{
 struct ads7846 *ts = handle;

 return get_pendown_state(ts) ? IRQ_WAKE_THREAD : IRQ_HANDLED;
}
