
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {scalar_t__ label; int flags; } ;
struct gpio_chip {int dummy; } ;


 int FLAG_IRQ_IS_ENABLED ;
 int FLAG_USED_AS_IRQ ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int clear_bit (int ,int *) ;
 int desc_set_label (struct gpio_desc*,int *) ;
 struct gpio_desc* gpiochip_get_desc (struct gpio_chip*,unsigned int) ;
 int strcmp (scalar_t__,char*) ;

void gpiochip_unlock_as_irq(struct gpio_chip *chip, unsigned int offset)
{
 struct gpio_desc *desc;

 desc = gpiochip_get_desc(chip, offset);
 if (IS_ERR(desc))
  return;

 clear_bit(FLAG_USED_AS_IRQ, &desc->flags);
 clear_bit(FLAG_IRQ_IS_ENABLED, &desc->flags);


 if (desc->label && !strcmp(desc->label, "interrupt"))
  desc_set_label(desc, ((void*)0));
}
