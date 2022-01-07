
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gpio {size_t ioh; int spinlock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int pm; int po; } ;


 int* gpio_pins ;
 struct pch_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pch_gpio_direction_output(struct gpio_chip *gpio, unsigned nr,
         int val)
{
 struct pch_gpio *chip = gpiochip_get_data(gpio);
 u32 pm;
 u32 reg_val;
 unsigned long flags;

 spin_lock_irqsave(&chip->spinlock, flags);

 reg_val = ioread32(&chip->reg->po);
 if (val)
  reg_val |= (1 << nr);
 else
  reg_val &= ~(1 << nr);
 iowrite32(reg_val, &chip->reg->po);

 pm = ioread32(&chip->reg->pm) & ((1 << gpio_pins[chip->ioh]) - 1);
 pm |= (1 << nr);
 iowrite32(pm, &chip->reg->pm);

 spin_unlock_irqrestore(&chip->spinlock, flags);

 return 0;
}
