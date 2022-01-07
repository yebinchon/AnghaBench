
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct gf100_clk_info {int mdiv; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gf100_clk {TYPE_2__ base; struct gf100_clk_info* eng; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int ) ;

__attribute__((used)) static void
gf100_clk_prog_4(struct gf100_clk *clk, int idx)
{
 struct gf100_clk_info *info = &clk->eng[idx];
 struct nvkm_device *device = clk->base.subdev.device;
 nvkm_mask(device, 0x137250 + (idx * 0x04), 0x00003f3f, info->mdiv);
}
