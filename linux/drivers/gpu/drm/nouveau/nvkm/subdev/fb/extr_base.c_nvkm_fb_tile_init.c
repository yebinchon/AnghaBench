
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fb_tile {int dummy; } ;
struct nvkm_fb {TYPE_2__* func; } ;
struct TYPE_3__ {int (* init ) (struct nvkm_fb*,int,int ,int ,int ,int ,struct nvkm_fb_tile*) ;} ;
struct TYPE_4__ {TYPE_1__ tile; } ;


 int stub1 (struct nvkm_fb*,int,int ,int ,int ,int ,struct nvkm_fb_tile*) ;

void
nvkm_fb_tile_init(struct nvkm_fb *fb, int region, u32 addr, u32 size,
    u32 pitch, u32 flags, struct nvkm_fb_tile *tile)
{
 fb->func->tile.init(fb, region, addr, size, pitch, flags, tile);
}
