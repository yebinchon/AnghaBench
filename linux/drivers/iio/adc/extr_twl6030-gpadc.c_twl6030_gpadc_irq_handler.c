
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_gpadc_data {int irq_complete; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 struct twl6030_gpadc_data* iio_priv (void*) ;

__attribute__((used)) static irqreturn_t twl6030_gpadc_irq_handler(int irq, void *indio_dev)
{
 struct twl6030_gpadc_data *gpadc = iio_priv(indio_dev);

 complete(&gpadc->irq_complete);

 return IRQ_HANDLED;
}
