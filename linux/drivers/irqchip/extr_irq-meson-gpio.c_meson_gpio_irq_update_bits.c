
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_gpio_irq_controller {scalar_t__ base; } ;


 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_gpio_irq_update_bits(struct meson_gpio_irq_controller *ctl,
           unsigned int reg, u32 mask, u32 val)
{
 u32 tmp;

 tmp = readl_relaxed(ctl->base + reg);
 tmp &= ~mask;
 tmp |= val;
 writel_relaxed(tmp, ctl->base + reg);
}
