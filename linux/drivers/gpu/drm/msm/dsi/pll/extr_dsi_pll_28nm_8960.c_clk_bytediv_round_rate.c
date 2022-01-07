
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 unsigned int get_vco_mul_factor (unsigned long) ;

__attribute__((used)) static long clk_bytediv_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *prate)
{
 unsigned long best_parent;
 unsigned int factor;

 factor = get_vco_mul_factor(rate);

 best_parent = rate * factor;
 *prate = clk_hw_round_rate(clk_hw_get_parent(hw), best_parent);

 return *prate / factor;
}
