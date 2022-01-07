
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_dclk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int SUN4I_TCON0_DCLK_DIV_SHIFT ;
 int SUN4I_TCON0_DCLK_DIV_WIDTH ;
 int SUN4I_TCON0_DCLK_REG ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static unsigned long sun4i_dclk_recalc_rate(struct clk_hw *hw,
         unsigned long parent_rate)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);
 u32 val;

 regmap_read(dclk->regmap, SUN4I_TCON0_DCLK_REG, &val);

 val >>= SUN4I_TCON0_DCLK_DIV_SHIFT;
 val &= (1 << SUN4I_TCON0_DCLK_DIV_WIDTH) - 1;

 if (!val)
  val = 1;

 return parent_rate / val;
}
