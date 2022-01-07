
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_gpio {int lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 unsigned long GPIO_BANK_OFFSET (unsigned int) ;
 int GPIO_BIT_OFFSET (unsigned int) ;
 unsigned long GPIO_SET_DR_OFFSET ;
 struct xgene_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int xgene_gpio_dir_in(struct gpio_chip *gc, unsigned int offset)
{
 struct xgene_gpio *chip = gpiochip_get_data(gc);
 unsigned long flags, bank_offset;
 u32 dirval, bit_offset;

 bank_offset = GPIO_SET_DR_OFFSET + GPIO_BANK_OFFSET(offset);
 bit_offset = GPIO_BIT_OFFSET(offset);

 spin_lock_irqsave(&chip->lock, flags);

 dirval = ioread32(chip->base + bank_offset);
 dirval |= BIT(bit_offset);
 iowrite32(dirval, chip->base + bank_offset);

 spin_unlock_irqrestore(&chip->lock, flags);

 return 0;
}
