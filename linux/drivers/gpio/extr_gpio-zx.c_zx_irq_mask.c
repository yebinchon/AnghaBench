
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zx_gpio {int lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;
 scalar_t__ ZX_GPIO_IE ;
 scalar_t__ ZX_GPIO_IM ;
 int ZX_GPIO_NR ;
 struct zx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int readw_relaxed (scalar_t__) ;
 int writew_relaxed (int,scalar_t__) ;

__attribute__((used)) static void zx_irq_mask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct zx_gpio *chip = gpiochip_get_data(gc);
 u16 mask = BIT(irqd_to_hwirq(d) % ZX_GPIO_NR);
 u16 gpioie;

 raw_spin_lock(&chip->lock);
 gpioie = readw_relaxed(chip->base + ZX_GPIO_IM) | mask;
 writew_relaxed(gpioie, chip->base + ZX_GPIO_IM);
 gpioie = readw_relaxed(chip->base + ZX_GPIO_IE) & ~mask;
 writew_relaxed(gpioie, chip->base + ZX_GPIO_IE);
 raw_spin_unlock(&chip->lock);
}
