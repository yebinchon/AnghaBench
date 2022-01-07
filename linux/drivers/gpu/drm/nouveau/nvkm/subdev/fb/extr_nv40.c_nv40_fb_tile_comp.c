
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fb_tile {int zcomp; TYPE_2__* tag; } ;
struct nvkm_fb {int tags; TYPE_1__* ram; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {int parts; } ;


 int DIV_ROUND_UP (int,int) ;
 int nvkm_mm_head (int *,int ,int,int,int,int,TYPE_2__**) ;
 int round_up (int,int) ;

void
nv40_fb_tile_comp(struct nvkm_fb *fb, int i, u32 size, u32 flags,
    struct nvkm_fb_tile *tile)
{
 u32 tiles = DIV_ROUND_UP(size, 0x80);
 u32 tags = round_up(tiles / fb->ram->parts, 0x100);
 if ( (flags & 2) &&
     !nvkm_mm_head(&fb->tags, 0, 1, tags, tags, 1, &tile->tag)) {
  tile->zcomp = 0x28000000;
  tile->zcomp |= ((tile->tag->offset ) >> 8);
  tile->zcomp |= ((tile->tag->offset + tags - 1) >> 8) << 13;



 }
}
