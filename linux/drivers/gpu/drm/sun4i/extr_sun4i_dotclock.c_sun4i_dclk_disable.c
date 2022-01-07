
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dclk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 int SUN4I_TCON0_DCLK_GATE_BIT ;
 int SUN4I_TCON0_DCLK_REG ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_dclk_disable(struct clk_hw *hw)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);

 regmap_update_bits(dclk->regmap, SUN4I_TCON0_DCLK_REG,
      BIT(SUN4I_TCON0_DCLK_GATE_BIT), 0);
}
