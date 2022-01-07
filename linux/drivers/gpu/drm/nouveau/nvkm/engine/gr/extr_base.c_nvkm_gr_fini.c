
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* fini ) (struct nvkm_gr*,int) ;} ;


 struct nvkm_gr* nvkm_gr (struct nvkm_engine*) ;
 int stub1 (struct nvkm_gr*,int) ;

__attribute__((used)) static int
nvkm_gr_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_gr *gr = nvkm_gr(engine);
 if (gr->func->fini)
  return gr->func->fini(gr, suspend);
 return 0;
}
