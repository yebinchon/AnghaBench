
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct gk104_clk_info {int dsrc; int ddiv; int ssel; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk104_clk {TYPE_2__ base; struct gk104_clk_info* eng; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

__attribute__((used)) static void
gk104_clk_prog_0(struct gk104_clk *clk, int idx)
{
 struct gk104_clk_info *info = &clk->eng[idx];
 struct nvkm_device *device = clk->base.subdev.device;
 if (!info->ssel) {
  nvkm_mask(device, 0x1371d0 + (idx * 0x04), 0x8000003f, info->ddiv);
  nvkm_wr32(device, 0x137160 + (idx * 0x04), info->dsrc);
 }
}
