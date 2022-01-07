
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_fb_tile {int zcomp; int addr; int pitch; int limit; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fb {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

void
nv41_fb_tile_prog(struct nvkm_fb *fb, int i, struct nvkm_fb_tile *tile)
{
 struct nvkm_device *device = fb->subdev.device;
 nvkm_wr32(device, 0x100604 + (i * 0x10), tile->limit);
 nvkm_wr32(device, 0x100608 + (i * 0x10), tile->pitch);
 nvkm_wr32(device, 0x100600 + (i * 0x10), tile->addr);
 nvkm_rd32(device, 0x100600 + (i * 0x10));
 nvkm_wr32(device, 0x100700 + (i * 0x04), tile->zcomp);
}
