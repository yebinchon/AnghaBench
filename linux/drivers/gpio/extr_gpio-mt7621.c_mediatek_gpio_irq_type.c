
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_gc {int rising; int falling; int hlevel; int llevel; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int BIT (int) ;





 unsigned int IRQ_TYPE_PROBE ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct mtk_gc* to_mediatek_gpio (struct gpio_chip*) ;

__attribute__((used)) static int
mediatek_gpio_irq_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct mtk_gc *rg = to_mediatek_gpio(gc);
 int pin = d->hwirq;
 u32 mask = BIT(pin);

 if (type == IRQ_TYPE_PROBE) {
  if ((rg->rising | rg->falling |
       rg->hlevel | rg->llevel) & mask)
   return 0;

  type = 130 | 131;
 }

 rg->rising &= ~mask;
 rg->falling &= ~mask;
 rg->hlevel &= ~mask;
 rg->llevel &= ~mask;

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 132:
  rg->rising |= mask;
  rg->falling |= mask;
  break;
 case 130:
  rg->rising |= mask;
  break;
 case 131:
  rg->falling |= mask;
  break;
 case 129:
  rg->hlevel |= mask;
  break;
 case 128:
  rg->llevel |= mask;
  break;
 }

 return 0;
}
