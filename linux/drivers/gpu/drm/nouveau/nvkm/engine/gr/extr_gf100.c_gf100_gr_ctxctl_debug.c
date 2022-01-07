
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
struct gf100_gr {TYPE_3__ base; } ;


 int gf100_gr_ctxctl_debug_unit (struct gf100_gr*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gf100_gr_ctxctl_debug(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 gpcnr = nvkm_rd32(device, 0x409604) & 0xffff;
 u32 gpc;

 gf100_gr_ctxctl_debug_unit(gr, 0x409000);
 for (gpc = 0; gpc < gpcnr; gpc++)
  gf100_gr_ctxctl_debug_unit(gr, 0x502000 + (gpc * 0x8000));
}
