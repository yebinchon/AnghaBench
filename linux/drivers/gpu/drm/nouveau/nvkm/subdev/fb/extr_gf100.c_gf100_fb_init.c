
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fb {TYPE_3__* func; } ;
struct nvkm_device {int therm; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct gf100_fb {int r100c10; scalar_t__ r100c10_page; TYPE_2__ base; } ;
struct TYPE_6__ {int clkgate_pack; } ;


 struct gf100_fb* gf100_fb (struct nvkm_fb*) ;
 int nvkm_therm_clkgate_init (int ,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gf100_fb_init(struct nvkm_fb *base)
{
 struct gf100_fb *fb = gf100_fb(base);
 struct nvkm_device *device = fb->base.subdev.device;

 if (fb->r100c10_page)
  nvkm_wr32(device, 0x100c10, fb->r100c10 >> 8);

 if (base->func->clkgate_pack) {
  nvkm_therm_clkgate_init(device->therm,
     base->func->clkgate_pack);
 }
}
