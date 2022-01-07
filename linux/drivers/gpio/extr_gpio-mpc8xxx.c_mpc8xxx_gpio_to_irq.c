
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc8xxx_gpio_chip {scalar_t__ irq; } ;
struct gpio_chip {int dummy; } ;


 int ENXIO ;
 unsigned int MPC8XXX_GPIO_PINS ;
 struct mpc8xxx_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_mapping (scalar_t__,unsigned int) ;

__attribute__((used)) static int mpc8xxx_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct mpc8xxx_gpio_chip *mpc8xxx_gc = gpiochip_get_data(gc);

 if (mpc8xxx_gc->irq && offset < MPC8XXX_GPIO_PINS)
  return irq_create_mapping(mpc8xxx_gc->irq, offset);
 else
  return -ENXIO;
}
