
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gk20a_pll {int n; int m; int pl; } ;
struct gk20a_clk {int parent_rate; int (* pl_to_div ) (int ) ;} ;


 int stub1 (int ) ;

u32
gk20a_pllg_calc_rate(struct gk20a_clk *clk, struct gk20a_pll *pll)
{
 u32 rate;
 u32 divider;

 rate = clk->parent_rate * pll->n;
 divider = pll->m * clk->pl_to_div(pll->pl);

 return rate / divider / 2;
}
