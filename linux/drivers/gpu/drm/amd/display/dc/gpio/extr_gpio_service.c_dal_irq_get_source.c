
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio {int dummy; } ;
typedef enum gpio_id { ____Placeholder_gpio_id } gpio_id ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;


 scalar_t__ DC_IRQ_SOURCE_GPIOPAD0 ;
 scalar_t__ DC_IRQ_SOURCE_HPD1 ;
 int DC_IRQ_SOURCE_INVALID ;


 scalar_t__ dal_gpio_get_enum (struct gpio const*) ;
 int dal_gpio_get_id (struct gpio const*) ;

enum dc_irq_source dal_irq_get_source(
 const struct gpio *irq)
{
 enum gpio_id id = dal_gpio_get_id(irq);

 switch (id) {
 case 128:
  return (enum dc_irq_source)(DC_IRQ_SOURCE_HPD1 +
   dal_gpio_get_enum(irq));
 case 129:
  return (enum dc_irq_source)(DC_IRQ_SOURCE_GPIOPAD0 +
   dal_gpio_get_enum(irq));
 default:
  return DC_IRQ_SOURCE_INVALID;
 }
}
