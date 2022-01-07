
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct gpio* hpd; struct gpio* generic; struct gpio* ddc; } ;
struct gpio {int id; TYPE_1__ hw_container; } ;


 int ASSERT_CRITICAL (int) ;






 int dal_gpio_close (struct gpio*) ;
 int kfree (struct gpio*) ;

void dal_gpio_destroy(
 struct gpio **gpio)
{
 if (!gpio || !*gpio) {
  ASSERT_CRITICAL(0);
  return;
 }

 dal_gpio_close(*gpio);

 switch ((*gpio)->id) {
 case 132:
  kfree((*gpio)->hw_container.ddc);
  (*gpio)->hw_container.ddc = ((void*)0);
  break;
 case 133:

  kfree((*gpio)->hw_container.ddc);
  (*gpio)->hw_container.ddc = ((void*)0);
  break;
 case 131:
  kfree((*gpio)->hw_container.generic);
  (*gpio)->hw_container.generic = ((void*)0);
  break;
 case 129:
  kfree((*gpio)->hw_container.hpd);
  (*gpio)->hw_container.hpd = ((void*)0);
  break;

 case 128:
  break;
 case 130:
  break;
 default:
  break;
 }

 kfree(*gpio);

 *gpio = ((void*)0);
}
