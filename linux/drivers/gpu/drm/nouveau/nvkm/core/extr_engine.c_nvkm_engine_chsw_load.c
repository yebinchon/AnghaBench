
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_engine {TYPE_1__* func; } ;
struct TYPE_2__ {int (* chsw_load ) (struct nvkm_engine*) ;} ;


 int stub1 (struct nvkm_engine*) ;

bool
nvkm_engine_chsw_load(struct nvkm_engine *engine)
{
 if (engine->func->chsw_load)
  return engine->func->chsw_load(engine);
 return 0;
}
