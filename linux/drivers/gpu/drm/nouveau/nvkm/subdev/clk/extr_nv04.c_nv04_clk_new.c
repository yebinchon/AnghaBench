
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int pll_prog; int pll_calc; } ;


 int nv04_clk ;
 int nv04_clk_pll_calc ;
 int nv04_clk_pll_prog ;
 int nvkm_clk_new_ (int *,struct nvkm_device*,int,int,struct nvkm_clk**) ;

int
nv04_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 int ret = nvkm_clk_new_(&nv04_clk, device, index, 0, pclk);
 if (ret == 0) {
  (*pclk)->pll_calc = nv04_clk_pll_calc;
  (*pclk)->pll_prog = nv04_clk_pll_prog;
 }
 return ret;
}
