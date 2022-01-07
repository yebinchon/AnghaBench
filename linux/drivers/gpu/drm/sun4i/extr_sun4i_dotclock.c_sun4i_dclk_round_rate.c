
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef int u64 ;
struct sun4i_tcon {int dclk_min_div; int dclk_max_div; } ;
struct sun4i_dclk {struct sun4i_tcon* tcon; } ;
struct clk_hw {int dummy; } ;


 int ULONG_MAX ;
 scalar_t__ abs (unsigned long) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,int) ;
 struct sun4i_dclk* hw_to_dclk (struct clk_hw*) ;

__attribute__((used)) static long sun4i_dclk_round_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate)
{
 struct sun4i_dclk *dclk = hw_to_dclk(hw);
 struct sun4i_tcon *tcon = dclk->tcon;
 unsigned long best_parent = 0;
 u8 best_div = 1;
 int i;

 for (i = tcon->dclk_min_div; i <= tcon->dclk_max_div; i++) {
  u64 ideal = (u64)rate * i;
  unsigned long rounded;
  if (ideal > ULONG_MAX)
   goto out;

  rounded = clk_hw_round_rate(clk_hw_get_parent(hw),
         ideal);

  if (rounded == ideal) {
   best_parent = rounded;
   best_div = i;
   goto out;
  }

  if (abs(rate - rounded / i) <
      abs(rate - best_parent / best_div)) {
   best_parent = rounded;
   best_div = i;
  }
 }

out:
 *parent_rate = best_parent;

 return best_parent / best_div;
}
