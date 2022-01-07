
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


 int TPC_UNIT (int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

void
gf100_gr_init_tex_hww_esr(struct gf100_gr *gr, int gpc, int tpc)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x224), 0xc0000000);
}
