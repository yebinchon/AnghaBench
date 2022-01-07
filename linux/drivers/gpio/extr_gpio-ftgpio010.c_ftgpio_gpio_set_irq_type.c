
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct ftgpio_gpio {scalar_t__ base; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ GPIO_INT_BOTH_EDGE ;
 scalar_t__ GPIO_INT_LEVEL ;
 scalar_t__ GPIO_INT_TYPE ;





 int ftgpio_gpio_ack_irq (struct irq_data*) ;
 struct ftgpio_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int handle_bad_irq ;
 int handle_edge_irq ;
 int handle_level_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ftgpio_gpio_set_irq_type(struct irq_data *d, unsigned int type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct ftgpio_gpio *g = gpiochip_get_data(gc);
 u32 mask = BIT(irqd_to_hwirq(d));
 u32 reg_both, reg_level, reg_type;

 reg_type = readl(g->base + GPIO_INT_TYPE);
 reg_level = readl(g->base + GPIO_INT_LEVEL);
 reg_both = readl(g->base + GPIO_INT_BOTH_EDGE);

 switch (type) {
 case 132:
  irq_set_handler_locked(d, handle_edge_irq);
  reg_type &= ~mask;
  reg_both |= mask;
  break;
 case 130:
  irq_set_handler_locked(d, handle_edge_irq);
  reg_type &= ~mask;
  reg_both &= ~mask;
  reg_level &= ~mask;
  break;
 case 131:
  irq_set_handler_locked(d, handle_edge_irq);
  reg_type &= ~mask;
  reg_both &= ~mask;
  reg_level |= mask;
  break;
 case 129:
  irq_set_handler_locked(d, handle_level_irq);
  reg_type |= mask;
  reg_level &= ~mask;
  break;
 case 128:
  irq_set_handler_locked(d, handle_level_irq);
  reg_type |= mask;
  reg_level |= mask;
  break;
 default:
  irq_set_handler_locked(d, handle_bad_irq);
  return -EINVAL;
 }

 writel(reg_type, g->base + GPIO_INT_TYPE);
 writel(reg_level, g->base + GPIO_INT_LEVEL);
 writel(reg_both, g->base + GPIO_INT_BOTH_EDGE);

 ftgpio_gpio_ack_irq(d);

 return 0;
}
