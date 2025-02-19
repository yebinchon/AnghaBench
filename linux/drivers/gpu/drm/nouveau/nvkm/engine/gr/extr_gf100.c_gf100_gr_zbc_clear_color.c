
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_4__* zbc_color; TYPE_3__ base; } ;
struct TYPE_8__ {int format; int* ds; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gf100_gr_zbc_clear_color(struct gf100_gr *gr, int zbc)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 if (gr->zbc_color[zbc].format) {
  nvkm_wr32(device, 0x405804, gr->zbc_color[zbc].ds[0]);
  nvkm_wr32(device, 0x405808, gr->zbc_color[zbc].ds[1]);
  nvkm_wr32(device, 0x40580c, gr->zbc_color[zbc].ds[2]);
  nvkm_wr32(device, 0x405810, gr->zbc_color[zbc].ds[3]);
 }
 nvkm_wr32(device, 0x405814, gr->zbc_color[zbc].format);
 nvkm_wr32(device, 0x405820, zbc);
 nvkm_wr32(device, 0x405824, 0x00000004);
}
