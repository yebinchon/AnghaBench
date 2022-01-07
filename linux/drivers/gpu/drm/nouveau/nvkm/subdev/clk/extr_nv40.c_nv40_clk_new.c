
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int dummy; } ;
struct nvkm_clk {int pll_prog; int pll_calc; } ;
struct nv40_clk {struct nvkm_clk base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv40_clk* kzalloc (int,int ) ;
 int nv04_clk_pll_calc ;
 int nv04_clk_pll_prog ;
 int nv40_clk ;
 int nvkm_clk_ctor (int *,struct nvkm_device*,int,int,struct nvkm_clk*) ;

int
nv40_clk_new(struct nvkm_device *device, int index, struct nvkm_clk **pclk)
{
 struct nv40_clk *clk;

 if (!(clk = kzalloc(sizeof(*clk), GFP_KERNEL)))
  return -ENOMEM;
 clk->base.pll_calc = nv04_clk_pll_calc;
 clk->base.pll_prog = nv04_clk_pll_prog;
 *pclk = &clk->base;

 return nvkm_clk_ctor(&nv40_clk, device, index, 1, &clk->base);
}
