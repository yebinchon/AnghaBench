
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int conv_completion; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t palmas_gpadc_irq(int irq, void *data)
{
 struct palmas_gpadc *adc = data;

 complete(&adc->conv_completion);

 return IRQ_HANDLED;
}
