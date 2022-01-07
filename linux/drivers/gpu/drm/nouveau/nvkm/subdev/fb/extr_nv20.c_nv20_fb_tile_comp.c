
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

__attribute__((used)) static void
nv20_fb_tile_comp(struct nvkm_fb *fb, int i, u32 size, u32 flags,
    struct nvkm_fb_tile *tile)
{
 u32 tiles = DIV_ROUND_UP(size, 0x40);
 u32 tags = round_up(tiles / fb->ram->parts, 0x40);
 if (!nvkm_mm_head(&fb->tags, 0, 1, tags, tags, 1, &tile->tag)) {
  if (!(flags & 2)) tile->zcomp = 0x00000000;
  else tile->zcomp = 0x04000000;
  tile->zcomp |= tile->tag->offset;
  tile->zcomp |= 0x80000000;



 }
}
