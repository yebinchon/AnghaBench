
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

void
gf117_grctx_generate_dist_skip_table(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 int i;

 for (i = 0; i < 8; i++)
  nvkm_wr32(device, 0x4064d0 + (i * 0x04), 0x00000000);
}
