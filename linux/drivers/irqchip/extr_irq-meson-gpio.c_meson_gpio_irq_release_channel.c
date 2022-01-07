
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_gpio_irq_controller {int channel_map; } ;


 int clear_bit (unsigned int,int ) ;
 unsigned int meson_gpio_irq_get_channel_idx (struct meson_gpio_irq_controller*,int *) ;

__attribute__((used)) static void
meson_gpio_irq_release_channel(struct meson_gpio_irq_controller *ctl,
          u32 *channel_hwirq)
{
 unsigned int idx;

 idx = meson_gpio_irq_get_channel_idx(ctl, channel_hwirq);
 clear_bit(idx, ctl->channel_map);
}
