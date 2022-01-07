
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {TYPE_1__* func; } ;
struct nvkm_fb_tile {int dummy; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* tile ) (struct nvkm_gr*,int,struct nvkm_fb_tile*) ;} ;


 struct nvkm_gr* nvkm_gr (struct nvkm_engine*) ;
 int stub1 (struct nvkm_gr*,int,struct nvkm_fb_tile*) ;

__attribute__((used)) static void
nvkm_gr_tile(struct nvkm_engine *engine, int region, struct nvkm_fb_tile *tile)
{
 struct nvkm_gr *gr = nvkm_gr(engine);
 if (gr->func->tile)
  gr->func->tile(gr, region, tile);
}
