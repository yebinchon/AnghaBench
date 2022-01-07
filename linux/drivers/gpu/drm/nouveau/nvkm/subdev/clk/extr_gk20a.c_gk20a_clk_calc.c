
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_cstate {int* domain; } ;
struct nvkm_clk {int dummy; } ;
struct gk20a_clk {int pll; } ;


 int GK20A_CLK_GPC_MDIV ;
 struct gk20a_clk* gk20a_clk (struct nvkm_clk*) ;
 int gk20a_pllg_calc_mnp (struct gk20a_clk*,int,int *) ;
 size_t nv_clk_src_gpc ;

int
gk20a_clk_calc(struct nvkm_clk *base, struct nvkm_cstate *cstate)
{
 struct gk20a_clk *clk = gk20a_clk(base);

 return gk20a_pllg_calc_mnp(clk, cstate->domain[nv_clk_src_gpc] *
      GK20A_CLK_GPC_MDIV, &clk->pll);
}
