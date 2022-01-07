
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zx_gpio {int lock; scalar_t__ base; } ;
struct gpio_chip {unsigned int ngpio; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 scalar_t__ ZX_GPIO_DIR ;
 scalar_t__ ZX_GPIO_DO0 ;
 scalar_t__ ZX_GPIO_DO1 ;
 struct zx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readw_relaxed (scalar_t__) ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int zx_direction_output(struct gpio_chip *gc, unsigned offset,
  int value)
{
 struct zx_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags;
 u16 gpiodir;

 if (offset >= gc->ngpio)
  return -EINVAL;

 raw_spin_lock_irqsave(&chip->lock, flags);
 gpiodir = readw_relaxed(chip->base + ZX_GPIO_DIR);
 gpiodir |= BIT(offset);
 writew_relaxed(gpiodir, chip->base + ZX_GPIO_DIR);

 if (value)
  writew_relaxed(BIT(offset), chip->base + ZX_GPIO_DO1);
 else
  writew_relaxed(BIT(offset), chip->base + ZX_GPIO_DO0);
 raw_spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
