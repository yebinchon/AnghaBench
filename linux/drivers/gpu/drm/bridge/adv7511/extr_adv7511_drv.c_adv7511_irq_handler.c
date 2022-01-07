
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int adv7511_irq_process (struct adv7511*,int) ;

__attribute__((used)) static irqreturn_t adv7511_irq_handler(int irq, void *devid)
{
 struct adv7511 *adv7511 = devid;
 int ret;

 ret = adv7511_irq_process(adv7511, 1);
 return ret < 0 ? IRQ_NONE : IRQ_HANDLED;
}
