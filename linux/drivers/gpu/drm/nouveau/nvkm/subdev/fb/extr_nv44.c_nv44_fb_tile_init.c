
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_fb_tile {int addr; int pitch; scalar_t__ limit; } ;
struct nvkm_fb {int dummy; } ;


 scalar_t__ max (unsigned int,int) ;

__attribute__((used)) static void
nv44_fb_tile_init(struct nvkm_fb *fb, int i, u32 addr, u32 size, u32 pitch,
    u32 flags, struct nvkm_fb_tile *tile)
{
 tile->addr = 0x00000001;
 tile->addr |= addr;
 tile->limit = max(1u, addr + size) - 1;
 tile->pitch = pitch;
}
