
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv40_clk {TYPE_2__ base; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u32
read_pll_2(struct nv40_clk *clk, u32 reg)
{
 struct nvkm_device *device = clk->base.subdev.device;
 u32 ctrl = nvkm_rd32(device, reg + 0x00);
 u32 coef = nvkm_rd32(device, reg + 0x04);
 int N2 = (coef & 0xff000000) >> 24;
 int M2 = (coef & 0x00ff0000) >> 16;
 int N1 = (coef & 0x0000ff00) >> 8;
 int M1 = (coef & 0x000000ff) >> 0;
 int P = (ctrl & 0x00070000) >> 16;
 u32 ref = 27000, khz = 0;

 if ((ctrl & 0x80000000) && M1) {
  khz = ref * N1 / M1;
  if ((ctrl & 0x40000100) == 0x40000000) {
   if (M2)
    khz = khz * N2 / M2;
   else
    khz = 0;
  }
 }

 return khz >> P;
}
