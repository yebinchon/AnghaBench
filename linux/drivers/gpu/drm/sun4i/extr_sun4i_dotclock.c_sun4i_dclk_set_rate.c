
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct sun4i_dclk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (int,int ) ;
 int SUN4I_TCON0_DCLK_REG ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,unsigned long) ;

__attribute__((used)) static int sun4i_dclk_set_rate(struct clk_hw *hw, unsigned long rate,
          unsigned long parent_rate)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);
 u8 div = parent_rate / rate;

 return regmap_update_bits(dclk->regmap, SUN4I_TCON0_DCLK_REG,
      GENMASK(6, 0), div);
}
