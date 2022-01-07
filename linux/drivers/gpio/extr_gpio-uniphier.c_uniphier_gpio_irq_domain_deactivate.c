
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct uniphier_gpio_priv {struct gpio_chip chip; } ;
struct irq_domain {struct uniphier_gpio_priv* host_data; } ;
struct irq_data {scalar_t__ hwirq; } ;


 scalar_t__ UNIPHIER_GPIO_IRQ_OFFSET ;
 int gpiochip_unlock_as_irq (struct gpio_chip*,scalar_t__) ;

__attribute__((used)) static void uniphier_gpio_irq_domain_deactivate(struct irq_domain *domain,
      struct irq_data *data)
{
 struct uniphier_gpio_priv *priv = domain->host_data;
 struct gpio_chip *chip = &priv->chip;

 gpiochip_unlock_as_irq(chip, data->hwirq + UNIPHIER_GPIO_IRQ_OFFSET);
}
