
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy (struct gpio**) ;
 int kfree (struct gpio*) ;

void dal_gpio_destroy_irq(
 struct gpio **irq)
{
 if (!irq || !*irq) {
  ASSERT_CRITICAL(0);
  return;
 }

 dal_gpio_close(*irq);
 dal_gpio_destroy(irq);
 kfree(*irq);

 *irq = ((void*)0);
}
