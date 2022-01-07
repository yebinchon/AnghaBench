
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5588_kpad {int delay; int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t adp5588_irq(int irq, void *handle)
{
 struct adp5588_kpad *kpad = handle;







 schedule_delayed_work(&kpad->work, kpad->delay);

 return IRQ_HANDLED;
}
