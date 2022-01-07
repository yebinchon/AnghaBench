
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
struct gf100_gr {int gpc_nr; int* tpc_nr; TYPE_3__ base; } ;


 int TPC_UNIT (int,int,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

void
gf100_gr_init_419cc0(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 int gpc, tpc;

 nvkm_mask(device, 0x419cc0, 0x00000008, 0x00000008);

 for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
  for (tpc = 0; tpc < gr->tpc_nr[gpc]; tpc++)
   nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x48c), 0xc0000000);
 }
}
