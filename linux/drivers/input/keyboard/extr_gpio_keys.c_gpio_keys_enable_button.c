
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_button_data {int disabled; int irq; } ;


 int enable_irq (int ) ;

__attribute__((used)) static void gpio_keys_enable_button(struct gpio_button_data *bdata)
{
 if (bdata->disabled) {
  enable_irq(bdata->irq);
  bdata->disabled = 0;
 }
}
