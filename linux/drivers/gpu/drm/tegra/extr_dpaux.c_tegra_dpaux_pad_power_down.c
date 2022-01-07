
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dpaux {int dummy; } ;


 int DPAUX_HYBRID_SPARE ;
 int DPAUX_HYBRID_SPARE_PAD_POWER_DOWN ;
 int tegra_dpaux_readl (struct tegra_dpaux*,int ) ;
 int tegra_dpaux_writel (struct tegra_dpaux*,int ,int ) ;

__attribute__((used)) static void tegra_dpaux_pad_power_down(struct tegra_dpaux *dpaux)
{
 u32 value = tegra_dpaux_readl(dpaux, DPAUX_HYBRID_SPARE);

 value |= DPAUX_HYBRID_SPARE_PAD_POWER_DOWN;

 tegra_dpaux_writel(dpaux, value, DPAUX_HYBRID_SPARE);
}
