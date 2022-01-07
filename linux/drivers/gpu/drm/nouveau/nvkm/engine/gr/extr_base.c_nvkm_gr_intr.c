
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_gr {TYPE_1__* func; } ;
struct nvkm_engine {int dummy; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_gr*) ;} ;


 struct nvkm_gr* nvkm_gr (struct nvkm_engine*) ;
 int stub1 (struct nvkm_gr*) ;

__attribute__((used)) static void
nvkm_gr_intr(struct nvkm_engine *engine)
{
 struct nvkm_gr *gr = nvkm_gr(engine);
 gr->func->intr(gr);
}
