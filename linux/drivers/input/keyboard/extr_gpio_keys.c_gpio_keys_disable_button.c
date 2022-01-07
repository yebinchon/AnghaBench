
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_button_data {int disabled; int release_timer; int work; scalar_t__ gpiod; int irq; } ;


 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int disable_irq (int ) ;

__attribute__((used)) static void gpio_keys_disable_button(struct gpio_button_data *bdata)
{
 if (!bdata->disabled) {



  disable_irq(bdata->irq);

  if (bdata->gpiod)
   cancel_delayed_work_sync(&bdata->work);
  else
   del_timer_sync(&bdata->release_timer);

  bdata->disabled = 1;
 }
}
