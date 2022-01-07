
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_gpio_sb {scalar_t__ regs; int gc; } ;
struct irq_data {int hwirq; } ;


 int GPIO_INT_LEVEL_H ;
 int GPIO_INT_LEVEL_L ;
 int HWIRQ_TO_GPIO (struct xgene_gpio_sb*,int) ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;




 unsigned int IRQ_TYPE_SENSE_MASK ;
 scalar_t__ MPA_GPIO_INT_LVL ;
 scalar_t__ MPA_GPIO_SEL_LO ;
 int irq_chip_set_type_parent (struct irq_data*,int const) ;
 struct xgene_gpio_sb* irq_data_get_irq_chip_data (struct irq_data*) ;
 int xgene_gpio_set_bit (int *,scalar_t__,int,int) ;

__attribute__((used)) static int xgene_gpio_sb_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct xgene_gpio_sb *priv = irq_data_get_irq_chip_data(d);
 int gpio = HWIRQ_TO_GPIO(priv, d->hwirq);
 int lvl_type = GPIO_INT_LEVEL_H;

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 130:
 case 129:
  lvl_type = GPIO_INT_LEVEL_H;
  break;
 case 131:
 case 128:
  lvl_type = GPIO_INT_LEVEL_L;
  break;
 default:
  break;
 }

 xgene_gpio_set_bit(&priv->gc, priv->regs + MPA_GPIO_SEL_LO,
   gpio * 2, 1);
 xgene_gpio_set_bit(&priv->gc, priv->regs + MPA_GPIO_INT_LVL,
   d->hwirq, lvl_type);


 if (type & IRQ_TYPE_EDGE_BOTH)
  return irq_chip_set_type_parent(d, 130);
 else
  return irq_chip_set_type_parent(d, 129);
}
