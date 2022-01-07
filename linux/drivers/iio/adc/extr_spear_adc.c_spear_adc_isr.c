
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_adc_state {int completion; int value; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int spear_adc_get_average (struct spear_adc_state*) ;

__attribute__((used)) static irqreturn_t spear_adc_isr(int irq, void *dev_id)
{
 struct spear_adc_state *st = dev_id;


 st->value = spear_adc_get_average(st);
 complete(&st->completion);

 return IRQ_HANDLED;
}
