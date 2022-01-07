
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dummy; } ;
struct gk20a_clk {int pll; } ;


 struct gk20a_clk* gk20a_clk (struct nvkm_clk*) ;
 int gk20a_pllg_program_mnp (struct gk20a_clk*,int *) ;
 int gk20a_pllg_program_mnp_slide (struct gk20a_clk*,int *) ;

int
gk20a_clk_prog(struct nvkm_clk *base)
{
 struct gk20a_clk *clk = gk20a_clk(base);
 int ret;

 ret = gk20a_pllg_program_mnp_slide(clk, &clk->pll);
 if (ret)
  ret = gk20a_pllg_program_mnp(clk, &clk->pll);

 return ret;
}
