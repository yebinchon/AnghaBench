
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iadc_chip {int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t iadc_isr(int irq, void *dev_id)
{
 struct iadc_chip *iadc = dev_id;

 complete(&iadc->complete);

 return IRQ_HANDLED;
}
