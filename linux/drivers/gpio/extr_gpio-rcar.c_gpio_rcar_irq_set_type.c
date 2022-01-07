
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct gpio_rcar_priv {int has_both_edge_trigger; int dev; } ;
struct gpio_chip {int dummy; } ;


 int EINVAL ;





 unsigned int IRQ_TYPE_SENSE_MASK ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int gpio_rcar_config_interrupt_input_mode (struct gpio_rcar_priv*,unsigned int,int,int,int) ;
 struct gpio_rcar_priv* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 unsigned int irqd_to_hwirq (struct irq_data*) ;

__attribute__((used)) static int gpio_rcar_irq_set_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct gpio_rcar_priv *p = gpiochip_get_data(gc);
 unsigned int hwirq = irqd_to_hwirq(d);

 dev_dbg(p->dev, "sense irq = %d, type = %d\n", hwirq, type);

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 129:
  gpio_rcar_config_interrupt_input_mode(p, hwirq, 1, 1,
            0);
  break;
 case 128:
  gpio_rcar_config_interrupt_input_mode(p, hwirq, 0, 1,
            0);
  break;
 case 130:
  gpio_rcar_config_interrupt_input_mode(p, hwirq, 1, 0,
            0);
  break;
 case 131:
  gpio_rcar_config_interrupt_input_mode(p, hwirq, 0, 0,
            0);
  break;
 case 132:
  if (!p->has_both_edge_trigger)
   return -EINVAL;
  gpio_rcar_config_interrupt_input_mode(p, hwirq, 1, 0,
            1);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
