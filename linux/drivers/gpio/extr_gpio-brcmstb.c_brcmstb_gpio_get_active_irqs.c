
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bgpio_lock; } ;
struct brcmstb_gpio_bank {TYPE_1__ gc; } ;


 unsigned long __brcmstb_gpio_get_active_irqs (struct brcmstb_gpio_bank*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned long
brcmstb_gpio_get_active_irqs(struct brcmstb_gpio_bank *bank)
{
 unsigned long status;
 unsigned long flags;

 spin_lock_irqsave(&bank->gc.bgpio_lock, flags);
 status = __brcmstb_gpio_get_active_irqs(bank);
 spin_unlock_irqrestore(&bank->gc.bgpio_lock, flags);

 return status;
}
