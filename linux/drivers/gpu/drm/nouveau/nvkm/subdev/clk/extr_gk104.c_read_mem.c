
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
struct gk104_clk {TYPE_2__ base; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int read_pll (struct gk104_clk*,int) ;

__attribute__((used)) static u32
read_mem(struct gk104_clk *clk)
{
 struct nvkm_device *device = clk->base.subdev.device;
 switch (nvkm_rd32(device, 0x1373f4) & 0x0000000f) {
 case 1: return read_pll(clk, 0x132020);
 case 2: return read_pll(clk, 0x132000);
 default:
  return 0;
 }
}
