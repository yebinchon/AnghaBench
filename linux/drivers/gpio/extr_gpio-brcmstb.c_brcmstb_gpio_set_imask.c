
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int bgpio_lock; int (* write_reg ) (scalar_t__,int ) ;int (* read_reg ) (scalar_t__) ;} ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct brcmstb_gpio_bank {int id; struct brcmstb_gpio_priv* parent_priv; struct gpio_chip gc; } ;


 int BIT (int ) ;
 scalar_t__ GIO_MASK (int ) ;
 int brcmstb_gpio_hwirq_to_offset (unsigned int,struct brcmstb_gpio_bank*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,int ) ;

__attribute__((used)) static void brcmstb_gpio_set_imask(struct brcmstb_gpio_bank *bank,
  unsigned int hwirq, bool enable)
{
 struct gpio_chip *gc = &bank->gc;
 struct brcmstb_gpio_priv *priv = bank->parent_priv;
 u32 mask = BIT(brcmstb_gpio_hwirq_to_offset(hwirq, bank));
 u32 imask;
 unsigned long flags;

 spin_lock_irqsave(&gc->bgpio_lock, flags);
 imask = gc->read_reg(priv->reg_base + GIO_MASK(bank->id));
 if (enable)
  imask |= mask;
 else
  imask &= ~mask;
 gc->write_reg(priv->reg_base + GIO_MASK(bank->id), imask);
 spin_unlock_irqrestore(&gc->bgpio_lock, flags);
}
