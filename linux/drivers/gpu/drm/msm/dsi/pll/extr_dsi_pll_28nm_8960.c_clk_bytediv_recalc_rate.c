
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_bytediv {int reg; } ;


 int pll_read (int ) ;
 struct clk_bytediv* to_clk_bytediv (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_bytediv_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_bytediv *bytediv = to_clk_bytediv(hw);
 unsigned int div;

 div = pll_read(bytediv->reg) & 0xff;

 return parent_rate / (div + 1);
}
