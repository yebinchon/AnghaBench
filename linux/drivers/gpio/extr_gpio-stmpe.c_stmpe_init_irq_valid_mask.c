
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmpe_gpio {int norequest_mask; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 int clear_bit (int,unsigned long*) ;
 struct stmpe_gpio* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void stmpe_init_irq_valid_mask(struct gpio_chip *gc,
          unsigned long *valid_mask,
          unsigned int ngpios)
{
 struct stmpe_gpio *stmpe_gpio = gpiochip_get_data(gc);
 int i;

 if (!stmpe_gpio->norequest_mask)
  return;


 for (i = 0; i < sizeof(u32); i++) {
  if (stmpe_gpio->norequest_mask & BIT(i))
   clear_bit(i, valid_mask);
 }
}
