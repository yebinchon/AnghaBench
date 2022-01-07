
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_gpio_priv {int dummy; } ;
struct irq_data {int hwirq; struct uniphier_gpio_priv* chip_data; } ;


 int BIT (int ) ;
 int UNIPHIER_GPIO_IRQ_EN ;
 void irq_chip_mask_parent (struct irq_data*) ;
 int uniphier_gpio_reg_update (struct uniphier_gpio_priv*,int ,int ,int ) ;

__attribute__((used)) static void uniphier_gpio_irq_mask(struct irq_data *data)
{
 struct uniphier_gpio_priv *priv = data->chip_data;
 u32 mask = BIT(data->hwirq);

 uniphier_gpio_reg_update(priv, UNIPHIER_GPIO_IRQ_EN, mask, 0);

 return irq_chip_mask_parent(data);
}
