
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int flags; } ;
struct gpio_chip {int dummy; } ;


 int FLAG_IRQ_IS_ENABLED ;
 int FLAG_USED_AS_IRQ ;
 int IS_ERR (struct gpio_desc*) ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 struct gpio_desc* gpiochip_get_desc (struct gpio_chip*,unsigned int) ;
 int test_bit (int ,int *) ;

void gpiochip_disable_irq(struct gpio_chip *chip, unsigned int offset)
{
 struct gpio_desc *desc = gpiochip_get_desc(chip, offset);

 if (!IS_ERR(desc) &&
     !WARN_ON(!test_bit(FLAG_USED_AS_IRQ, &desc->flags)))
  clear_bit(FLAG_IRQ_IS_ENABLED, &desc->flags);
}
