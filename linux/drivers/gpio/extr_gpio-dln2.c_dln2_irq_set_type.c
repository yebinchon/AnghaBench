
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct dln2_gpio {int * irq_type; } ;


 int DLN2_GPIO_EVENT_CHANGE ;
 int DLN2_GPIO_EVENT_CHANGE_FALLING ;
 int DLN2_GPIO_EVENT_CHANGE_RISING ;
 int DLN2_GPIO_EVENT_LVL_HIGH ;
 int DLN2_GPIO_EVENT_LVL_LOW ;
 int EINVAL ;





 struct dln2_gpio* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int dln2_irq_set_type(struct irq_data *irqd, unsigned type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(irqd);
 struct dln2_gpio *dln2 = gpiochip_get_data(gc);
 int pin = irqd_to_hwirq(irqd);

 switch (type) {
 case 129:
  dln2->irq_type[pin] = DLN2_GPIO_EVENT_LVL_HIGH;
  break;
 case 128:
  dln2->irq_type[pin] = DLN2_GPIO_EVENT_LVL_LOW;
  break;
 case 132:
  dln2->irq_type[pin] = DLN2_GPIO_EVENT_CHANGE;
  break;
 case 130:
  dln2->irq_type[pin] = DLN2_GPIO_EVENT_CHANGE_RISING;
  break;
 case 131:
  dln2->irq_type[pin] = DLN2_GPIO_EVENT_CHANGE_FALLING;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
