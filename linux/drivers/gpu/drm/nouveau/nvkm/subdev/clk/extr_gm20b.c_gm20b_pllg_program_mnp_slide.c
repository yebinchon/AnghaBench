
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gm20b_clk {int base; } ;
struct gk20a_pll {scalar_t__ m; scalar_t__ pl; void* n; } ;


 scalar_t__ gk20a_pllg_is_enabled (int *) ;
 void* gk20a_pllg_n_lo (int *,struct gk20a_pll*) ;
 int gk20a_pllg_read_mnp (int *,struct gk20a_pll*) ;
 int gm20b_pllg_program_mnp (struct gm20b_clk*,struct gk20a_pll*) ;
 int gm20b_pllg_slide (struct gm20b_clk*,void*) ;

__attribute__((used)) static int
gm20b_pllg_program_mnp_slide(struct gm20b_clk *clk, const struct gk20a_pll *pll)
{
 struct gk20a_pll cur_pll;
 int ret;

 if (gk20a_pllg_is_enabled(&clk->base)) {
  gk20a_pllg_read_mnp(&clk->base, &cur_pll);


  if (pll->m == cur_pll.m && pll->pl == cur_pll.pl)
   return gm20b_pllg_slide(clk, pll->n);


  cur_pll.n = gk20a_pllg_n_lo(&clk->base, &cur_pll);
  ret = gm20b_pllg_slide(clk, cur_pll.n);
  if (ret)
   return ret;
 }


 cur_pll = *pll;
 cur_pll.n = gk20a_pllg_n_lo(&clk->base, &cur_pll);
 ret = gm20b_pllg_program_mnp(clk, &cur_pll);
 if (ret)
  return ret;


 return gm20b_pllg_slide(clk, pll->n);
}
