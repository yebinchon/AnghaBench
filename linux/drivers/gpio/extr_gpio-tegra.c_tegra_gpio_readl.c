
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_gpio_info {scalar_t__ regs; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 tegra_gpio_readl(struct tegra_gpio_info *tgi, u32 reg)
{
 return __raw_readl(tgi->regs + reg);
}
