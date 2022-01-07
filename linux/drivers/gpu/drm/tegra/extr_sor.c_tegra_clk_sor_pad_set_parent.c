
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_sor {int dummy; } ;
struct tegra_clk_sor_pad {struct tegra_sor* sor; } ;
struct clk_hw {int dummy; } ;


 int SOR_CLK_CNTRL ;
 int SOR_CLK_CNTRL_DP_CLK_SEL_MASK ;
 int SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK ;
 int SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 int tegra_sor_writel (struct tegra_sor*,int ,int ) ;
 struct tegra_clk_sor_pad* to_pad (struct clk_hw*) ;

__attribute__((used)) static int tegra_clk_sor_pad_set_parent(struct clk_hw *hw, u8 index)
{
 struct tegra_clk_sor_pad *pad = to_pad(hw);
 struct tegra_sor *sor = pad->sor;
 u32 value;

 value = tegra_sor_readl(sor, SOR_CLK_CNTRL);
 value &= ~SOR_CLK_CNTRL_DP_CLK_SEL_MASK;

 switch (index) {
 case 0:
  value |= SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_PCLK;
  break;

 case 1:
  value |= SOR_CLK_CNTRL_DP_CLK_SEL_SINGLE_DPCLK;
  break;
 }

 tegra_sor_writel(sor, value, SOR_CLK_CNTRL);

 return 0;
}
