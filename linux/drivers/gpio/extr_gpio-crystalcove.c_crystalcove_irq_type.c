
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;
struct crystalcove_gpio {int update; int intcnt_value; } ;


 scalar_t__ CRYSTALCOVE_GPIO_NUM ;
 int CTLI_INTCNT_BE ;
 int CTLI_INTCNT_DIS ;
 int CTLI_INTCNT_NE ;
 int CTLI_INTCNT_PE ;
 int EINVAL ;




 int UPDATE_IRQ_TYPE ;
 struct crystalcove_gpio* gpiochip_get_data (int ) ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int crystalcove_irq_type(struct irq_data *data, unsigned type)
{
 struct crystalcove_gpio *cg =
  gpiochip_get_data(irq_data_get_irq_chip_data(data));

 if (data->hwirq >= CRYSTALCOVE_GPIO_NUM)
  return 0;

 switch (type) {
 case 128:
  cg->intcnt_value = CTLI_INTCNT_DIS;
  break;
 case 131:
  cg->intcnt_value = CTLI_INTCNT_BE;
  break;
 case 129:
  cg->intcnt_value = CTLI_INTCNT_PE;
  break;
 case 130:
  cg->intcnt_value = CTLI_INTCNT_NE;
  break;
 default:
  return -EINVAL;
 }

 cg->update |= UPDATE_IRQ_TYPE;

 return 0;
}
