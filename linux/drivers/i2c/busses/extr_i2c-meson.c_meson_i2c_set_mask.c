
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_i2c {scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_i2c_set_mask(struct meson_i2c *i2c, int reg, u32 mask,
          u32 val)
{
 u32 data;

 data = readl(i2c->regs + reg);
 data &= ~mask;
 data |= val & mask;
 writel(data, i2c->regs + reg);
}
