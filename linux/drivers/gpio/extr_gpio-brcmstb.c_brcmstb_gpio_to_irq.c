
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;
struct brcmstb_gpio_priv {unsigned int gpio_base; int num_gpios; int irq_domain; } ;


 int ENXIO ;
 struct brcmstb_gpio_priv* brcmstb_gpio_gc_to_priv (struct gpio_chip*) ;
 int irq_create_mapping (int ,int) ;

__attribute__((used)) static int brcmstb_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
{
 struct brcmstb_gpio_priv *priv = brcmstb_gpio_gc_to_priv(gc);

 int hwirq = offset + (gc->base - priv->gpio_base);

 if (hwirq >= priv->num_gpios)
  return -ENXIO;
 return irq_create_mapping(priv->irq_domain, hwirq);
}
