
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_engine {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_engine*) ;} ;


 struct nvkm_engine* nvkm_engine (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_engine*) ;

__attribute__((used)) static void
nvkm_engine_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_engine *engine = nvkm_engine(subdev);
 if (engine->func->intr)
  engine->func->intr(engine);
}
