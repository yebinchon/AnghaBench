
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_hwmon {int tsidone; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t da9052_tsi_datardy_irq(int irq, void *data)
{
 struct da9052_hwmon *hwmon = data;

 complete(&hwmon->tsidone);
 return IRQ_HANDLED;
}
