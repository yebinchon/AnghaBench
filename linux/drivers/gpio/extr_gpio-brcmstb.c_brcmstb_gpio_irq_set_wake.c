
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;
struct brcmstb_gpio_priv {int dummy; } ;
struct brcmstb_gpio_bank {int wake_active; struct brcmstb_gpio_priv* parent_priv; } ;


 int BIT (int ) ;
 int brcmstb_gpio_hwirq_to_offset (int ,struct brcmstb_gpio_bank*) ;
 int brcmstb_gpio_priv_set_wake (struct brcmstb_gpio_priv*,unsigned int) ;
 struct brcmstb_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int brcmstb_gpio_irq_set_wake(struct irq_data *d, unsigned int enable)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct brcmstb_gpio_bank *bank = gpiochip_get_data(gc);
 struct brcmstb_gpio_priv *priv = bank->parent_priv;
 u32 mask = BIT(brcmstb_gpio_hwirq_to_offset(d->hwirq, bank));





 if (enable)
  bank->wake_active |= mask;
 else
  bank->wake_active &= ~mask;

 return brcmstb_gpio_priv_set_wake(priv, enable);
}
