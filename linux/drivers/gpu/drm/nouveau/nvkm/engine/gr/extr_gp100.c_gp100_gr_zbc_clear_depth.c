
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_2__ subdev; } ;
struct TYPE_8__ {TYPE_3__ engine; } ;
struct gf100_gr {TYPE_1__* zbc_depth; TYPE_4__ base; } ;
struct TYPE_5__ {int format; int ds; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int const) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int ) ;

void
gp100_gr_zbc_clear_depth(struct gf100_gr *gr, int zbc)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 const int znum = zbc - 1;
 const u32 zoff = znum * 4;

 if (gr->zbc_depth[zbc].format)
  nvkm_wr32(device, 0x418110 + zoff, gr->zbc_depth[zbc].ds);
 nvkm_mask(device, 0x41814c + ((znum / 4) * 4),
     0x0000007f << ((znum % 4) * 7),
     gr->zbc_depth[zbc].format << ((znum % 4) * 7));
}
