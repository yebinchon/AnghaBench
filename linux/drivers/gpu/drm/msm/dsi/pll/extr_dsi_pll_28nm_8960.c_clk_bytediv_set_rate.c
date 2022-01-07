
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct clk_hw {int dummy; } ;
struct clk_bytediv {int reg; } ;


 unsigned int get_vco_mul_factor (unsigned long) ;
 unsigned int pll_read (int ) ;
 int pll_write (int ,unsigned int) ;
 struct clk_bytediv* to_clk_bytediv (struct clk_hw*) ;

__attribute__((used)) static int clk_bytediv_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_bytediv *bytediv = to_clk_bytediv(hw);
 u32 val;
 unsigned int factor;

 factor = get_vco_mul_factor(rate);

 val = pll_read(bytediv->reg);
 val |= (factor - 1) & 0xff;
 pll_write(bytediv->reg, val);

 return 0;
}
