
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int) ;
 int palmas_disable_auto_conversion (struct palmas_gpadc*) ;

__attribute__((used)) static irqreturn_t palmas_gpadc_irq_auto(int irq, void *data)
{
 struct palmas_gpadc *adc = data;

 dev_dbg(adc->dev, "Threshold interrupt %d occurs\n", irq);
 palmas_disable_auto_conversion(adc);

 return IRQ_HANDLED;
}
