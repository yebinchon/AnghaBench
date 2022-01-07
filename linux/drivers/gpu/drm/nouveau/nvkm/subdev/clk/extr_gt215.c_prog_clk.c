
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct gt215_clk_info {int clk; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gt215_clk {TYPE_2__ base; struct gt215_clk_info* eng; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
prog_clk(struct gt215_clk *clk, int idx, int dom)
{
 struct gt215_clk_info *info = &clk->eng[dom];
 struct nvkm_device *device = clk->base.subdev.device;
 nvkm_mask(device, 0x004120 + (idx * 4), 0x003f3141, 0x00000101 | info->clk);
}
