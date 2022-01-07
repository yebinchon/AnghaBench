
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_clk {int dummy; } ;
struct nvbios_pll {int refclk; } ;
struct gt215_clk_info {int pll; int fb_delay; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct gt215_clk {TYPE_2__ base; } ;
struct TYPE_3__ {int bios; } ;


 int EINVAL ;
 int ERANGE ;
 struct gt215_clk* gt215_clk (struct nvkm_clk*) ;
 int gt215_clk_info (TYPE_2__*,int,int,struct gt215_clk_info*) ;
 int gt215_pll_calc (struct nvkm_subdev*,struct nvbios_pll*,int,int*,int *,int*,int*) ;
 int max (int,int) ;
 int nvbios_pll_parse (int ,int,struct nvbios_pll*) ;

int
gt215_pll_info(struct nvkm_clk *base, int idx, u32 pll, u32 khz,
        struct gt215_clk_info *info)
{
 struct gt215_clk *clk = gt215_clk(base);
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvbios_pll limits;
 int P, N, M, diff;
 int ret;

 info->pll = 0;



 ret = gt215_clk_info(&clk->base, idx, khz, info);
 diff = khz - ret;
 if (!pll || (diff >= -2000 && diff < 3000)) {
  goto out;
 }


 ret = nvbios_pll_parse(subdev->device->bios, pll, &limits);
 if (ret)
  return ret;

 ret = gt215_clk_info(&clk->base, idx - 0x10, limits.refclk, info);
 if (ret != limits.refclk)
  return -EINVAL;

 ret = gt215_pll_calc(subdev, &limits, khz, &N, ((void*)0), &M, &P);
 if (ret >= 0) {
  info->pll = (P << 16) | (N << 8) | M;
 }

out:
 info->fb_delay = max(((khz + 7566) / 15133), (u32) 18);
 return ret ? ret : -ERANGE;
}
