
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_dclk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int SUN4I_TCON0_IO_POL_REG ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int sun4i_dclk_get_phase(struct clk_hw *hw)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);
 u32 val;

 regmap_read(dclk->regmap, SUN4I_TCON0_IO_POL_REG, &val);

 val >>= 28;
 val &= 3;

 return val * 120;
}
