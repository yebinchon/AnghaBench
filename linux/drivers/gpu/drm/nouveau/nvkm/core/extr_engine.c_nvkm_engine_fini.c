
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_engine {TYPE_1__* func; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_engine*,int) ;} ;


 struct nvkm_engine* nvkm_engine (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_engine*,int) ;

__attribute__((used)) static int
nvkm_engine_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_engine *engine = nvkm_engine(subdev);
 if (engine->func->fini)
  return engine->func->fini(engine, suspend);
 return 0;
}
