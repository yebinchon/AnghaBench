
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
gk104_grctx_generate_r418800(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;





 if (0) {
  nvkm_mask(device, 0x418800, 0x00200000, 0x00200000);
  nvkm_mask(device, 0x41be10, 0x00800000, 0x00800000);
 }
}
