
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_fb_tile {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_3__* func; TYPE_1__ subdev; } ;
struct nvkm_device {int * mpeg; TYPE_4__* gr; } ;
struct TYPE_8__ {int engine; } ;
struct TYPE_6__ {int (* prog ) (struct nvkm_fb*,int,struct nvkm_fb_tile*) ;} ;
struct TYPE_7__ {TYPE_2__ tile; } ;


 int nvkm_engine_tile (int *,int) ;
 int stub1 (struct nvkm_fb*,int,struct nvkm_fb_tile*) ;

void
nvkm_fb_tile_prog(struct nvkm_fb *fb, int region, struct nvkm_fb_tile *tile)
{
 struct nvkm_device *device = fb->subdev.device;
 if (fb->func->tile.prog) {
  fb->func->tile.prog(fb, region, tile);
  if (device->gr)
   nvkm_engine_tile(&device->gr->engine, region);
  if (device->mpeg)
   nvkm_engine_tile(device->mpeg, region);
 }
}
