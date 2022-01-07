
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_pm {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_pm*) ;} ;


 struct nvkm_pm* nvkm_pm (struct nvkm_engine*) ;
 int stub1 (struct nvkm_pm*) ;

__attribute__((used)) static int
nvkm_pm_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_pm *pm = nvkm_pm(engine);
 if (pm->func->fini)
  pm->func->fini(pm);
 return 0;
}
