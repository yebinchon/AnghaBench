
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_gpadc {int complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t da9150_gpadc_irq(int irq, void *data)
{

 struct da9150_gpadc *gpadc = data;

 complete(&gpadc->complete);

 return IRQ_HANDLED;
}
