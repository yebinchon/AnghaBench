
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_cstate {int * domain; } ;
struct gt215_clk {int * eng; int base; } ;


 int gt215_pll_info (int *,int,int ,int ,int *) ;

__attribute__((used)) static int
calc_clk(struct gt215_clk *clk, struct nvkm_cstate *cstate,
  int idx, u32 pll, int dom)
{
 int ret = gt215_pll_info(&clk->base, idx, pll, cstate->domain[dom],
     &clk->eng[dom]);
 if (ret >= 0)
  return 0;
 return ret;
}
