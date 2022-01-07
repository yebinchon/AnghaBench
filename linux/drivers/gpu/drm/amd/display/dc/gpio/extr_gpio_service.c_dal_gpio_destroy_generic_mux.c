
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 int dal_gpio_close (struct gpio*) ;
 int dal_gpio_destroy (struct gpio**) ;
 int kfree (struct gpio*) ;

void dal_gpio_destroy_generic_mux(
 struct gpio **mux)
{
 if (!mux || !*mux) {
  ASSERT_CRITICAL(0);
  return;
 }

 dal_gpio_close(*mux);
 dal_gpio_destroy(mux);
 kfree(*mux);

 *mux = ((void*)0);
}
