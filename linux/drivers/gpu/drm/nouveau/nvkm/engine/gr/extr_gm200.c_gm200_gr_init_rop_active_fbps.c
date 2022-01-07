
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


 int nvkm_mask (struct nvkm_device*,int,int,int const) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static void
gm200_gr_init_rop_active_fbps(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 const u32 fbp_count = nvkm_rd32(device, 0x12006c);
 nvkm_mask(device, 0x408850, 0x0000000f, fbp_count);
 nvkm_mask(device, 0x408958, 0x0000000f, fbp_count);
}
