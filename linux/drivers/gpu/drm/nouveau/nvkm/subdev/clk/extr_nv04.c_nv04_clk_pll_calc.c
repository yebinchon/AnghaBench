
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_pll_vals {int N1; int M1; int N2; int M2; int log2P; int refclk; } ;
struct nvkm_clk {int subdev; } ;
struct nvbios_pll {int refclk; } ;


 int nv04_pll_calc (int *,struct nvbios_pll*,int,int*,int*,int*,int*,int*) ;

int
nv04_clk_pll_calc(struct nvkm_clk *clock, struct nvbios_pll *info,
    int clk, struct nvkm_pll_vals *pv)
{
 int N1, M1, N2, M2, P;
 int ret = nv04_pll_calc(&clock->subdev, info, clk, &N1, &M1, &N2, &M2, &P);
 if (ret) {
  pv->refclk = info->refclk;
  pv->N1 = N1;
  pv->M1 = M1;
  pv->N2 = N2;
  pv->M2 = M2;
  pv->log2P = P;
 }
 return ret;
}
