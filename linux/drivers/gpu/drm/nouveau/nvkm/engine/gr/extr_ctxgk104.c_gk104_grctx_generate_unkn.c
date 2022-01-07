
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


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gk104_grctx_generate_unkn(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_mask(device, 0x418c6c, 0x00000001, 0x00000001);
 nvkm_mask(device, 0x41980c, 0x00000010, 0x00000010);
 nvkm_mask(device, 0x41be08, 0x00000004, 0x00000004);
 nvkm_mask(device, 0x4064c0, 0x80000000, 0x80000000);
 nvkm_mask(device, 0x405800, 0x08000000, 0x08000000);
 nvkm_mask(device, 0x419c00, 0x00000008, 0x00000008);
}
