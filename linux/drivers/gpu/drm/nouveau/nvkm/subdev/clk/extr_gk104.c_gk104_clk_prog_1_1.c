
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct gk104_clk {TYPE_2__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

__attribute__((used)) static void
gk104_clk_prog_1_1(struct gk104_clk *clk, int idx)
{
 struct nvkm_device *device = clk->base.subdev.device;
 nvkm_mask(device, 0x137160 + (idx * 0x04), 0x00000100, 0x00000000);
}
