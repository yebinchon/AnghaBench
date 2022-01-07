
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {int gpc_nr; TYPE_3__ base; } ;


 int GPC_UNIT (int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gp102_gr_init_swdx_pes_mask(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 mask = 0, data, gpc;

 for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
  data = nvkm_rd32(device, GPC_UNIT(gpc, 0x0c50)) & 0x0000000f;
  mask |= data << (gpc * 4);
 }

 nvkm_wr32(device, 0x4181d0, mask);
}
