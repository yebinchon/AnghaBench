
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vf610_gpio_port {int * irqc; } ;
struct irq_data {size_t hwirq; } ;


 int EINVAL ;





 int IRQ_TYPE_LEVEL_MASK ;
 int PORT_INT_EITHER_EDGE ;
 int PORT_INT_FALLING_EDGE ;
 int PORT_INT_LOGIC_ONE ;
 int PORT_INT_LOGIC_ZERO ;
 int PORT_INT_RISING_EDGE ;
 struct vf610_gpio_port* gpiochip_get_data (int ) ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;

__attribute__((used)) static int vf610_gpio_irq_set_type(struct irq_data *d, u32 type)
{
 struct vf610_gpio_port *port =
  gpiochip_get_data(irq_data_get_irq_chip_data(d));
 u8 irqc;

 switch (type) {
 case 130:
  irqc = PORT_INT_RISING_EDGE;
  break;
 case 131:
  irqc = PORT_INT_FALLING_EDGE;
  break;
 case 132:
  irqc = PORT_INT_EITHER_EDGE;
  break;
 case 128:
  irqc = PORT_INT_LOGIC_ZERO;
  break;
 case 129:
  irqc = PORT_INT_LOGIC_ONE;
  break;
 default:
  return -EINVAL;
 }

 port->irqc[d->hwirq] = irqc;

 if (type & IRQ_TYPE_LEVEL_MASK)
  irq_set_handler_locked(d, handle_level_irq);
 else
  irq_set_handler_locked(d, handle_edge_irq);

 return 0;
}
