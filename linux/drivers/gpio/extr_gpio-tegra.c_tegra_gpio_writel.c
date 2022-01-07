
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_gpio_info {scalar_t__ regs; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void tegra_gpio_writel(struct tegra_gpio_info *tgi,
         u32 val, u32 reg)
{
 __raw_writel(val, tgi->regs + reg);
}
