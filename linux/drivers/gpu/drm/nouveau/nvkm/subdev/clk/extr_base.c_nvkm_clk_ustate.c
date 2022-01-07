
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int ustate_ac; int ustate_dc; } ;


 int nvkm_clk_ustate_update (struct nvkm_clk*,int) ;
 int nvkm_pstate_calc (struct nvkm_clk*,int) ;

int
nvkm_clk_ustate(struct nvkm_clk *clk, int req, int pwr)
{
 int ret = nvkm_clk_ustate_update(clk, req);
 if (ret >= 0) {
  if (ret -= 2, pwr) clk->ustate_ac = ret;
  else clk->ustate_dc = ret;
  return nvkm_pstate_calc(clk, 1);
 }
 return ret;
}
