
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gk20a_pll {scalar_t__ m; scalar_t__ pl; void* n; } ;
struct gk20a_clk {int dummy; } ;


 scalar_t__ gk20a_pllg_is_enabled (struct gk20a_clk*) ;
 void* gk20a_pllg_n_lo (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_program_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_read_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_slide (struct gk20a_clk*,void*) ;

__attribute__((used)) static int
gk20a_pllg_program_mnp_slide(struct gk20a_clk *clk, const struct gk20a_pll *pll)
{
 struct gk20a_pll cur_pll;
 int ret;

 if (gk20a_pllg_is_enabled(clk)) {
  gk20a_pllg_read_mnp(clk, &cur_pll);


  if (pll->m == cur_pll.m && pll->pl == cur_pll.pl)
   return gk20a_pllg_slide(clk, pll->n);


  cur_pll.n = gk20a_pllg_n_lo(clk, &cur_pll);
  ret = gk20a_pllg_slide(clk, cur_pll.n);
  if (ret)
   return ret;
 }


 cur_pll = *pll;
 cur_pll.n = gk20a_pllg_n_lo(clk, &cur_pll);
 ret = gk20a_pllg_program_mnp(clk, &cur_pll);
 if (ret)
  return ret;


 return gk20a_pllg_slide(clk, pll->n);
}
