
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int (* write_reg ) (scalar_t__,int ) ;} ;
struct brcmstb_gpio_priv {scalar_t__ reg_base; } ;
struct brcmstb_gpio_bank {int id; struct brcmstb_gpio_priv* parent_priv; } ;


 int BIT (int ) ;
 scalar_t__ GIO_STAT (int ) ;
 int brcmstb_gpio_hwirq_to_offset (int ,struct brcmstb_gpio_bank*) ;
 struct brcmstb_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int stub1 (scalar_t__,int ) ;

__attribute__((used)) static void brcmstb_gpio_irq_ack(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct brcmstb_gpio_bank *bank = gpiochip_get_data(gc);
 struct brcmstb_gpio_priv *priv = bank->parent_priv;
 u32 mask = BIT(brcmstb_gpio_hwirq_to_offset(d->hwirq, bank));

 gc->write_reg(priv->reg_base + GIO_STAT(bank->id), mask);
}
