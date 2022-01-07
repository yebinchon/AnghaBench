
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP_ULL (unsigned long,int) ;
 int pl111_clk_div_choose_div (struct clk_hw*,unsigned long,unsigned long*,int) ;

__attribute__((used)) static long pl111_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *prate)
{
 int div = pl111_clk_div_choose_div(hw, rate, prate, 1);

 return DIV_ROUND_UP_ULL(*prate, div);
}
