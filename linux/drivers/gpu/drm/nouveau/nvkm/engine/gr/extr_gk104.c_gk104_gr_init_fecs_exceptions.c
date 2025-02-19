
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gk104_gr_init_fecs_exceptions(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_wr32(device, 0x409ffc, 0x00000000);
 nvkm_wr32(device, 0x409c14, 0x00003e3e);
 nvkm_wr32(device, 0x409c24, 0x000f0001);
}
