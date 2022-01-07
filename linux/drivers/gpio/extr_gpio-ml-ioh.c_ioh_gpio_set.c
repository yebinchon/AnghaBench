
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ioh_gpio {size_t ch; int spinlock; TYPE_2__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int po; } ;


 struct ioh_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ioh_gpio_set(struct gpio_chip *gpio, unsigned nr, int val)
{
 u32 reg_val;
 struct ioh_gpio *chip = gpiochip_get_data(gpio);
 unsigned long flags;

 spin_lock_irqsave(&chip->spinlock, flags);
 reg_val = ioread32(&chip->reg->regs[chip->ch].po);
 if (val)
  reg_val |= (1 << nr);
 else
  reg_val &= ~(1 << nr);

 iowrite32(reg_val, &chip->reg->regs[chip->ch].po);
 spin_unlock_irqrestore(&chip->spinlock, flags);
}
