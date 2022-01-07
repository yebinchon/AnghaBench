
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


 int TPC_UNIT (int ,int ,int) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;

void
gf100_gr_init_vsc_stream_master(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_mask(device, TPC_UNIT(0, 0, 0x05c), 0x00000001, 0x00000001);
}
