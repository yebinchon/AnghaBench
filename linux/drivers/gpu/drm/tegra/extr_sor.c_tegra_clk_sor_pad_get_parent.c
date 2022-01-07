
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


 int U8_MAX ;
 int tegra_sor_readl (struct tegra_sor*,int ) ;
 struct tegra_clk_sor_pad* to_pad (struct clk_hw*) ;

__attribute__((used)) static u8 tegra_clk_sor_pad_get_parent(struct clk_hw *hw)
{
 struct tegra_clk_sor_pad *pad = to_pad(hw);
 struct tegra_sor *sor = pad->sor;
 u8 parent = U8_MAX;
 u32 value;

 value = tegra_sor_readl(sor, SOR_CLK_CNTRL);

 switch (value & SOR_CLK_CNTRL_DP_CLK_SEL_MASK) {
 case 128:
 case 130:
  parent = 0;
  break;

 case 129:
 case 131:
  parent = 1;
  break;
 }

 return parent;
}
