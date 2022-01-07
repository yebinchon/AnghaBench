
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_dclk {int regmap; } ;
struct clk_hw {int dummy; } ;


 int GENMASK (int,int) ;
 int SUN4I_TCON0_IO_POL_REG ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int sun4i_dclk_set_phase(struct clk_hw *hw, int degrees)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);
 u32 val = degrees / 120;

 val <<= 28;

 regmap_update_bits(dclk->regmap, SUN4I_TCON0_IO_POL_REG,
      GENMASK(29, 28),
      val);

 return 0;
}
