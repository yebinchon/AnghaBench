
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_gpio_chip {scalar_t__ reg_base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 gpreg_read(struct lpc32xx_gpio_chip *group, unsigned long offset)
{
 return __raw_readl(group->reg_base + offset);
}
