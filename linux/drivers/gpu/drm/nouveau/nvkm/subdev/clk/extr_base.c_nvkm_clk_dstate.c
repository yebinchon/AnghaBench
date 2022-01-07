
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_clk {int dstate; scalar_t__ state_nr; } ;


 int max (int,int ) ;
 int min (int,scalar_t__) ;
 int nvkm_pstate_calc (struct nvkm_clk*,int) ;

int
nvkm_clk_dstate(struct nvkm_clk *clk, int req, int rel)
{
 if (!rel) clk->dstate = req;
 if ( rel) clk->dstate += rel;
 clk->dstate = min(clk->dstate, clk->state_nr - 1);
 clk->dstate = max(clk->dstate, 0);
 return nvkm_pstate_calc(clk, 1);
}
