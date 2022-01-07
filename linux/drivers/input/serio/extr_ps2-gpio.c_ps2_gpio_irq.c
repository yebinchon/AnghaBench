
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2_gpio_data {scalar_t__ mode; } ;
typedef int irqreturn_t ;


 int ps2_gpio_irq_rx (struct ps2_gpio_data*) ;
 int ps2_gpio_irq_tx (struct ps2_gpio_data*) ;

__attribute__((used)) static irqreturn_t ps2_gpio_irq(int irq, void *dev_id)
{
 struct ps2_gpio_data *drvdata = dev_id;

 return drvdata->mode ? ps2_gpio_irq_tx(drvdata) :
  ps2_gpio_irq_rx(drvdata);
}
