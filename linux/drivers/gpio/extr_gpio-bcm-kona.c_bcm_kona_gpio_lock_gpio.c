
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_kona_gpio {int lock; scalar_t__ reg_base; } ;


 int BIT (unsigned int) ;
 int GPIO_BANK (unsigned int) ;
 scalar_t__ GPIO_PWD_STATUS (int) ;
 int bcm_kona_gpio_write_lock_regs (scalar_t__,int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void bcm_kona_gpio_lock_gpio(struct bcm_kona_gpio *kona_gpio,
     unsigned gpio)
{
 u32 val;
 unsigned long flags;
 int bank_id = GPIO_BANK(gpio);

 raw_spin_lock_irqsave(&kona_gpio->lock, flags);

 val = readl(kona_gpio->reg_base + GPIO_PWD_STATUS(bank_id));
 val |= BIT(gpio);
 bcm_kona_gpio_write_lock_regs(kona_gpio->reg_base, bank_id, val);

 raw_spin_unlock_irqrestore(&kona_gpio->lock, flags);
}
