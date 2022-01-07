
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fb_tile {int addr; int pitch; scalar_t__ limit; } ;
struct nvkm_fb {TYPE_1__* func; } ;
struct TYPE_4__ {int (* comp ) (struct nvkm_fb*,int,int,int,struct nvkm_fb_tile*) ;} ;
struct TYPE_3__ {TYPE_2__ tile; } ;


 scalar_t__ max (unsigned int,int) ;
 int stub1 (struct nvkm_fb*,int,int,int,struct nvkm_fb_tile*) ;

void
nv20_fb_tile_init(struct nvkm_fb *fb, int i, u32 addr, u32 size, u32 pitch,
    u32 flags, struct nvkm_fb_tile *tile)
{
 tile->addr = 0x00000001 | addr;
 tile->limit = max(1u, addr + size) - 1;
 tile->pitch = pitch;
 if (flags & 4) {
  fb->func->tile.comp(fb, i, size, flags, tile);
  tile->addr |= 2;
 }
}
