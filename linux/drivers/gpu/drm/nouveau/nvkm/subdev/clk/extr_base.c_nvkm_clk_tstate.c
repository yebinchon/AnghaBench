
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nvkm_clk {scalar_t__ temp; } ;


 int nvkm_pstate_calc (struct nvkm_clk*,int) ;

int
nvkm_clk_tstate(struct nvkm_clk *clk, u8 temp)
{
 if (clk->temp == temp)
  return 0;
 clk->temp = temp;
 return nvkm_pstate_calc(clk, 0);
}
