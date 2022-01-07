
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc5_chip {int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t adc5_isr(int irq, void *dev_id)
{
 struct adc5_chip *adc = dev_id;

 complete(&adc->complete);

 return IRQ_HANDLED;
}
