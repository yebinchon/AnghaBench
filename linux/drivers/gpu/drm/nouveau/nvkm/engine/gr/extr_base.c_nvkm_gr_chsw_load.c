
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* chsw_load ) (struct nvkm_gr*) ;} ;


 struct nvkm_gr* nvkm_gr (struct nvkm_engine*) ;
 int stub1 (struct nvkm_gr*) ;

__attribute__((used)) static bool
nvkm_gr_chsw_load(struct nvkm_engine *engine)
{
 struct nvkm_gr *gr = nvkm_gr(engine);
 if (gr->func->chsw_load)
  return gr->func->chsw_load(gr);
 return 0;
}
