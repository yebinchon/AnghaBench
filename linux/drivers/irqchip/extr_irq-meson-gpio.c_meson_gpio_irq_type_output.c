
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;

__attribute__((used)) static unsigned int meson_gpio_irq_type_output(unsigned int type)
{
 unsigned int sense = type & IRQ_TYPE_SENSE_MASK;

 type &= ~IRQ_TYPE_SENSE_MASK;





 if (sense & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
  type |= IRQ_TYPE_LEVEL_HIGH;
 else
  type |= IRQ_TYPE_EDGE_RISING;

 return type;
}
