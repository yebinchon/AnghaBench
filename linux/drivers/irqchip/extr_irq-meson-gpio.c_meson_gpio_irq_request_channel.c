
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_gpio_irq_controller {int lock; int * channel_irqs; int channel_map; } ;


 int ENOSPC ;
 unsigned int NUM_CHANNEL ;
 unsigned long REG_PIN_SEL_SHIFT (unsigned int) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 unsigned int meson_gpio_irq_channel_to_reg (unsigned int) ;
 int meson_gpio_irq_update_bits (struct meson_gpio_irq_controller*,unsigned int,int,unsigned long) ;
 int pr_debug (char*,unsigned long,unsigned int,int ) ;
 int pr_err (char*) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
          unsigned long hwirq,
          u32 **channel_hwirq)
{
 unsigned int reg, idx;

 spin_lock(&ctl->lock);


 idx = find_first_zero_bit(ctl->channel_map, NUM_CHANNEL);
 if (idx >= NUM_CHANNEL) {
  spin_unlock(&ctl->lock);
  pr_err("No channel available\n");
  return -ENOSPC;
 }


 set_bit(idx, ctl->channel_map);





 reg = meson_gpio_irq_channel_to_reg(idx);
 meson_gpio_irq_update_bits(ctl, reg,
       0xff << REG_PIN_SEL_SHIFT(idx),
       hwirq << REG_PIN_SEL_SHIFT(idx));







 *channel_hwirq = &(ctl->channel_irqs[idx]);

 spin_unlock(&ctl->lock);

 pr_debug("hwirq %lu assigned to channel %d - irq %u\n",
   hwirq, idx, **channel_hwirq);

 return 0;
}
