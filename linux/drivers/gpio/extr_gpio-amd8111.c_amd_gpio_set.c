
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {TYPE_1__* pdev; int lock; scalar_t__ pm; } ;
struct TYPE_2__ {int dev; } ;


 int AMD_GPIO_DEBOUNCE ;
 int AMD_GPIO_MODE_OUT ;
 int AMD_GPIO_X_OUT_HI ;
 int AMD_GPIO_X_OUT_LOW ;
 scalar_t__ AMD_REG_GPIO (unsigned int) ;
 int dev_dbg (int *,char*,unsigned int,int,int) ;
 struct amd_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void amd_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct amd_gpio *agp = gpiochip_get_data(chip);
 u8 temp;
 unsigned long flags;

 spin_lock_irqsave(&agp->lock, flags);
 temp = ioread8(agp->pm + AMD_REG_GPIO(offset));
 temp = (temp & AMD_GPIO_DEBOUNCE) | AMD_GPIO_MODE_OUT | (value ? AMD_GPIO_X_OUT_HI : AMD_GPIO_X_OUT_LOW);
 iowrite8(temp, agp->pm + AMD_REG_GPIO(offset));
 spin_unlock_irqrestore(&agp->lock, flags);

 dev_dbg(&agp->pdev->dev, "Setting gpio %d, value %d, reg=%02x\n", offset, !!value, temp);
}
