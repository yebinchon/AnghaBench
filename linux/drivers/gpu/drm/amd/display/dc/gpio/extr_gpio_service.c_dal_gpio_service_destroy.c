
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct gpio_service {struct gpio_service** busyness; } ;


 int BREAK_TO_DEBUGGER () ;
 size_t GPIO_ID_COUNT ;
 int kfree (struct gpio_service*) ;

void dal_gpio_service_destroy(
 struct gpio_service **ptr)
{
 if (!ptr || !*ptr) {
  BREAK_TO_DEBUGGER();
  return;
 }


 {
  uint32_t index_of_id = 0;

  do {
   kfree((*ptr)->busyness[index_of_id]);

   ++index_of_id;
  } while (index_of_id < GPIO_ID_COUNT);
 }

 kfree(*ptr);

 *ptr = ((void*)0);
}
