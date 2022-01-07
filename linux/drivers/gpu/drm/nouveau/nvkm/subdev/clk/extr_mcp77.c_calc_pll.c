
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {TYPE_2__* device; } ;
struct TYPE_4__ {scalar_t__ max_freq; } ;
struct nvbios_pll {int refclk; TYPE_1__ vco2; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct mcp77_clk {TYPE_3__ base; } ;
struct TYPE_5__ {int bios; } ;


 int nv04_pll_calc (struct nvkm_subdev*,struct nvbios_pll*,int ,int*,int*,int *,int *,int*) ;
 int nv_clk_src_href ;
 int nvbios_pll_parse (int ,int ,struct nvbios_pll*) ;
 int nvkm_clk_read (TYPE_3__*,int ) ;

__attribute__((used)) static u32
calc_pll(struct mcp77_clk *clk, u32 reg,
  u32 clock, int *N, int *M, int *P)
{
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvbios_pll pll;
 int ret;

 ret = nvbios_pll_parse(subdev->device->bios, reg, &pll);
 if (ret)
  return 0;

 pll.vco2.max_freq = 0;
 pll.refclk = nvkm_clk_read(&clk->base, nv_clk_src_href);
 if (!pll.refclk)
  return 0;

 return nv04_pll_calc(subdev, &pll, clock, N, M, ((void*)0), ((void*)0), P);
}
