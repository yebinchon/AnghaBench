
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


 int GPC_UNIT (int ,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

void
gk104_gr_init_vsc_stream_master(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_wr32(device, GPC_UNIT(0, 0x3018), 0x00000001);
}
