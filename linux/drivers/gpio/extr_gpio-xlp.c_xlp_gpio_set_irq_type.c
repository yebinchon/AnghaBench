
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_gpio_priv {int gpio_intr_pol; int gpio_intr_type; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;




 int XLP_GPIO_IRQ_POL_HIGH ;
 int XLP_GPIO_IRQ_POL_LOW ;
 int XLP_GPIO_IRQ_TYPE_EDGE ;
 int XLP_GPIO_IRQ_TYPE_LVL ;
 struct xlp_gpio_priv* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int xlp_gpio_set_reg (int ,int ,int) ;

__attribute__((used)) static int xlp_gpio_set_irq_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct xlp_gpio_priv *priv = gpiochip_get_data(gc);
 int pol, irq_type;

 switch (type) {
 case 130:
  irq_type = XLP_GPIO_IRQ_TYPE_EDGE;
  pol = XLP_GPIO_IRQ_POL_HIGH;
  break;
 case 131:
  irq_type = XLP_GPIO_IRQ_TYPE_EDGE;
  pol = XLP_GPIO_IRQ_POL_LOW;
  break;
 case 129:
  irq_type = XLP_GPIO_IRQ_TYPE_LVL;
  pol = XLP_GPIO_IRQ_POL_HIGH;
  break;
 case 128:
  irq_type = XLP_GPIO_IRQ_TYPE_LVL;
  pol = XLP_GPIO_IRQ_POL_LOW;
  break;
 default:
  return -EINVAL;
 }

 xlp_gpio_set_reg(priv->gpio_intr_type, d->hwirq, irq_type);
 xlp_gpio_set_reg(priv->gpio_intr_pol, d->hwirq, pol);

 return 0;
}
