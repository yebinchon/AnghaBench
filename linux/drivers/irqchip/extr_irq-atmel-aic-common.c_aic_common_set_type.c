
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int mask; } ;
struct irq_chip_generic {struct aic_chip_data* private; } ;
struct aic_chip_data {int ext_irqs; } ;


 unsigned int AT91_AIC_SRCTYPE ;
 unsigned int AT91_AIC_SRCTYPE_FALLING ;
 unsigned int AT91_AIC_SRCTYPE_HIGH ;
 unsigned int AT91_AIC_SRCTYPE_LOW ;
 unsigned int AT91_AIC_SRCTYPE_RISING ;
 int EINVAL ;




 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;

int aic_common_set_type(struct irq_data *d, unsigned type, unsigned *val)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct aic_chip_data *aic = gc->private;
 unsigned aic_type;

 switch (type) {
 case 129:
  aic_type = AT91_AIC_SRCTYPE_HIGH;
  break;
 case 130:
  aic_type = AT91_AIC_SRCTYPE_RISING;
  break;
 case 128:
  if (!(d->mask & aic->ext_irqs))
   return -EINVAL;

  aic_type = AT91_AIC_SRCTYPE_LOW;
  break;
 case 131:
  if (!(d->mask & aic->ext_irqs))
   return -EINVAL;

  aic_type = AT91_AIC_SRCTYPE_FALLING;
  break;
 default:
  return -EINVAL;
 }

 *val &= ~AT91_AIC_SRCTYPE;
 *val |= aic_type;

 return 0;
}
