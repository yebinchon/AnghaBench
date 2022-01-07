
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddc {int pin_clock; int pin_data; } ;


 int BREAK_TO_DEBUGGER () ;
 int dal_ddc_close (struct ddc*) ;
 int dal_gpio_destroy (int *) ;
 int kfree (struct ddc*) ;

void dal_gpio_destroy_ddc(
 struct ddc **ddc)
{
 if (!ddc || !*ddc) {
  BREAK_TO_DEBUGGER();
  return;
 }

 dal_ddc_close(*ddc);
 dal_gpio_destroy(&(*ddc)->pin_data);
 dal_gpio_destroy(&(*ddc)->pin_clock);
 kfree(*ddc);

 *ddc = ((void*)0);
}
