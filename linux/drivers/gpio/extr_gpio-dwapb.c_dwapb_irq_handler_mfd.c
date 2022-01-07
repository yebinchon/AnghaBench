
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dwapb_gpio {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ dwapb_do_irq (struct dwapb_gpio*) ;

__attribute__((used)) static irqreturn_t dwapb_irq_handler_mfd(int irq, void *dev_id)
{
 u32 worked;
 struct dwapb_gpio *gpio = dev_id;

 worked = dwapb_do_irq(gpio);

 return worked ? IRQ_HANDLED : IRQ_NONE;
}
