
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_vibrator {int vcc_on; int vcc; int gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void gpio_vibrator_stop(struct gpio_vibrator *vibrator)
{
 gpiod_set_value_cansleep(vibrator->gpio, 0);

 if (vibrator->vcc_on) {
  regulator_disable(vibrator->vcc);
  vibrator->vcc_on = 0;
 }
}
