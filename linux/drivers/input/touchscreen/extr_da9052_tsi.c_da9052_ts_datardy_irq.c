
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_tsi {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int da9052_ts_read (struct da9052_tsi*) ;

__attribute__((used)) static irqreturn_t da9052_ts_datardy_irq(int irq, void *data)
{
 struct da9052_tsi *tsi = data;

 da9052_ts_read(tsi);

 return IRQ_HANDLED;
}
