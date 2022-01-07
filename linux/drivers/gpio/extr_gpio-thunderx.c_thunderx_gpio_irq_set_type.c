
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thunderx_line {int fil_bits; int line; } ;
struct thunderx_gpio {int lock; scalar_t__ register_base; int od_mask; int invert_mask; struct thunderx_line* line_entries; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_BIT_CFG_INT_EN ;
 int GPIO_BIT_CFG_INT_TYPE ;
 int GPIO_BIT_CFG_PIN_XOR ;
 int IRQ_SET_MASK_OK ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 scalar_t__ bit_cfg_reg (int ) ;
 int clear_bit (int ,int ) ;
 struct thunderx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int handle_fasteoi_ack_irq ;
 int handle_fasteoi_mask_irq ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 size_t irqd_to_hwirq (struct irq_data*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int set_bit (int ,int ) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static int thunderx_gpio_irq_set_type(struct irq_data *d,
          unsigned int flow_type)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct thunderx_gpio *txgpio = gpiochip_get_data(gc);
 struct thunderx_line *txline =
  &txgpio->line_entries[irqd_to_hwirq(d)];
 u64 bit_cfg;

 irqd_set_trigger_type(d, flow_type);

 bit_cfg = txline->fil_bits | GPIO_BIT_CFG_INT_EN;

 if (flow_type & IRQ_TYPE_EDGE_BOTH) {
  irq_set_handler_locked(d, handle_fasteoi_ack_irq);
  bit_cfg |= GPIO_BIT_CFG_INT_TYPE;
 } else {
  irq_set_handler_locked(d, handle_fasteoi_mask_irq);
 }

 raw_spin_lock(&txgpio->lock);
 if (flow_type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_LEVEL_LOW)) {
  bit_cfg |= GPIO_BIT_CFG_PIN_XOR;
  set_bit(txline->line, txgpio->invert_mask);
 } else {
  clear_bit(txline->line, txgpio->invert_mask);
 }
 clear_bit(txline->line, txgpio->od_mask);
 writeq(bit_cfg, txgpio->register_base + bit_cfg_reg(txline->line));
 raw_spin_unlock(&txgpio->lock);

 return IRQ_SET_MASK_OK;
}
