
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_gpio_priv {int dummy; } ;
struct irq_data {int hwirq; struct uniphier_gpio_priv* chip_data; } ;


 int BIT (int ) ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 int UNIPHIER_GPIO_IRQ_FLT_EN ;
 int UNIPHIER_GPIO_IRQ_MODE ;
 int irq_chip_set_type_parent (struct irq_data*,unsigned int) ;
 int uniphier_gpio_reg_update (struct uniphier_gpio_priv*,int ,int ,int ) ;

__attribute__((used)) static int uniphier_gpio_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct uniphier_gpio_priv *priv = data->chip_data;
 u32 mask = BIT(data->hwirq);
 u32 val = 0;

 if (type == IRQ_TYPE_EDGE_BOTH) {
  val = mask;
  type = IRQ_TYPE_EDGE_FALLING;
 }

 uniphier_gpio_reg_update(priv, UNIPHIER_GPIO_IRQ_MODE, mask, val);

 uniphier_gpio_reg_update(priv, UNIPHIER_GPIO_IRQ_FLT_EN, mask, val);

 return irq_chip_set_type_parent(data, type);
}
