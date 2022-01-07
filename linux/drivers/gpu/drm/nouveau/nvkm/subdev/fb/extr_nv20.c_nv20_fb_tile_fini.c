
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb_tile {int tag; scalar_t__ zcomp; scalar_t__ pitch; scalar_t__ limit; scalar_t__ addr; } ;
struct nvkm_fb {int tags; } ;


 int nvkm_mm_free (int *,int *) ;

void
nv20_fb_tile_fini(struct nvkm_fb *fb, int i, struct nvkm_fb_tile *tile)
{
 tile->addr = 0;
 tile->limit = 0;
 tile->pitch = 0;
 tile->zcomp = 0;
 nvkm_mm_free(&fb->tags, &tile->tag);
}
