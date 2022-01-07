
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gk20a_pll {int m; } ;
struct gk20a_clk {int parent_rate; TYPE_1__* params; } ;
struct TYPE_2__ {int min_vco; } ;


 int DIV_ROUND_UP (int,int) ;
 int KHZ ;

__attribute__((used)) static inline u32
gk20a_pllg_n_lo(struct gk20a_clk *clk, struct gk20a_pll *pll)
{
 return DIV_ROUND_UP(pll->m * clk->params->min_vco,
       clk->parent_rate / KHZ);
}
