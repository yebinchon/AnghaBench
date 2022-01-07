
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_gpio {int update; int intcnt; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct gpio_chip {int dummy; } ;


 int CTLI_INTCNT_BE ;
 int CTLI_INTCNT_DIS ;
 int CTLI_INTCNT_NE ;
 int CTLI_INTCNT_PE ;
 int EINVAL ;




 int UPDATE_IRQ_TYPE ;
 scalar_t__ WCOVE_GPIO_NUM ;
 struct wcove_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static int wcove_irq_type(struct irq_data *data, unsigned int type)
{
 struct gpio_chip *chip = irq_data_get_irq_chip_data(data);
 struct wcove_gpio *wg = gpiochip_get_data(chip);

 if (data->hwirq >= WCOVE_GPIO_NUM)
  return 0;

 switch (type) {
 case 128:
  wg->intcnt = CTLI_INTCNT_DIS;
  break;
 case 131:
  wg->intcnt = CTLI_INTCNT_BE;
  break;
 case 129:
  wg->intcnt = CTLI_INTCNT_PE;
  break;
 case 130:
  wg->intcnt = CTLI_INTCNT_NE;
  break;
 default:
  return -EINVAL;
 }

 wg->update |= UPDATE_IRQ_TYPE;

 return 0;
}
