
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_gpio_sb {scalar_t__ regs; int gc; } ;
struct irq_domain {struct xgene_gpio_sb* host_data; } ;
struct irq_data {int hwirq; } ;


 int HWIRQ_TO_GPIO (struct xgene_gpio_sb*,int ) ;
 scalar_t__ MPA_GPIO_SEL_LO ;
 int gpiochip_unlock_as_irq (int *,int) ;
 int xgene_gpio_set_bit (int *,scalar_t__,int,int ) ;

__attribute__((used)) static void xgene_gpio_sb_domain_deactivate(struct irq_domain *d,
  struct irq_data *irq_data)
{
 struct xgene_gpio_sb *priv = d->host_data;
 u32 gpio = HWIRQ_TO_GPIO(priv, irq_data->hwirq);

 gpiochip_unlock_as_irq(&priv->gc, gpio);
 xgene_gpio_set_bit(&priv->gc, priv->regs + MPA_GPIO_SEL_LO,
   gpio * 2, 0);
}
