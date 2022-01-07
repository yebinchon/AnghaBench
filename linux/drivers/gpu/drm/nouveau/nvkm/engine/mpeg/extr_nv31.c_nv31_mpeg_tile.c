
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_fb_tile {int addr; int limit; int pitch; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv31_mpeg {TYPE_2__ engine; } ;


 struct nv31_mpeg* nv31_mpeg (struct nvkm_engine*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

void
nv31_mpeg_tile(struct nvkm_engine *engine, int i, struct nvkm_fb_tile *tile)
{
 struct nv31_mpeg *mpeg = nv31_mpeg(engine);
 struct nvkm_device *device = mpeg->engine.subdev.device;

 nvkm_wr32(device, 0x00b008 + (i * 0x10), tile->pitch);
 nvkm_wr32(device, 0x00b004 + (i * 0x10), tile->limit);
 nvkm_wr32(device, 0x00b000 + (i * 0x10), tile->addr);
}
