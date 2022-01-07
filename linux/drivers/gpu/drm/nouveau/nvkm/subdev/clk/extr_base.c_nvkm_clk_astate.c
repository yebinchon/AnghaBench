
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int astate; scalar_t__ state_nr; } ;


 int max (int,int ) ;
 int min (int,scalar_t__) ;
 int nvkm_pstate_calc (struct nvkm_clk*,int) ;

int
nvkm_clk_astate(struct nvkm_clk *clk, int req, int rel, bool wait)
{
 if (!rel) clk->astate = req;
 if ( rel) clk->astate += rel;
 clk->astate = min(clk->astate, clk->state_nr - 1);
 clk->astate = max(clk->astate, 0);
 return nvkm_pstate_calc(clk, wait);
}
