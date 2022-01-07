
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_gpio_chip {scalar_t__ reg_base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void gpreg_write(struct lpc32xx_gpio_chip *group, u32 val, unsigned long offset)
{
 __raw_writel(val, group->reg_base + offset);
}
