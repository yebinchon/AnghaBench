
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct meson_gpio_irq_controller {int lock; TYPE_1__* params; } ;
struct TYPE_2__ {int support_edge_both; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_BOTH ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 int REG_BOTH_EDGE (unsigned int) ;
 int REG_EDGE_POL ;
 int REG_EDGE_POL_EDGE (unsigned int) ;
 int REG_EDGE_POL_LOW (unsigned int) ;
 int REG_EDGE_POL_MASK (unsigned int) ;
 unsigned int meson_gpio_irq_get_channel_idx (struct meson_gpio_irq_controller*,int *) ;
 int meson_gpio_irq_update_bits (struct meson_gpio_irq_controller*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int meson_gpio_irq_type_setup(struct meson_gpio_irq_controller *ctl,
         unsigned int type,
         u32 *channel_hwirq)
{
 u32 val = 0;
 unsigned int idx;

 idx = meson_gpio_irq_get_channel_idx(ctl, channel_hwirq);
 type &= IRQ_TYPE_SENSE_MASK;





 if (type == IRQ_TYPE_EDGE_BOTH) {
  if (!ctl->params->support_edge_both)
   return -EINVAL;

  val |= REG_BOTH_EDGE(idx);
 } else {
  if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
   val |= REG_EDGE_POL_EDGE(idx);

  if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_EDGE_FALLING))
   val |= REG_EDGE_POL_LOW(idx);
 }

 spin_lock(&ctl->lock);

 meson_gpio_irq_update_bits(ctl, REG_EDGE_POL,
       REG_EDGE_POL_MASK(idx), val);

 spin_unlock(&ctl->lock);

 return 0;
}
