
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_hwmon {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t da9055_auxadc_irq(int irq, void *irq_data)
{
 struct da9055_hwmon *hwmon = irq_data;

 complete(&hwmon->done);

 return IRQ_HANDLED;
}
