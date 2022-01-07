
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * region; } ;
struct nvkm_fb {TYPE_4__ tile; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct nvkm_engine {TYPE_3__* func; TYPE_2__ subdev; } ;
struct TYPE_7__ {int (* tile ) (struct nvkm_engine*,int,int *) ;} ;
struct TYPE_5__ {struct nvkm_fb* fb; } ;


 int stub1 (struct nvkm_engine*,int,int *) ;

void
nvkm_engine_tile(struct nvkm_engine *engine, int region)
{
 struct nvkm_fb *fb = engine->subdev.device->fb;
 if (engine->func->tile)
  engine->func->tile(engine, region, &fb->tile.region[region]);
}
