
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_engine {int dummy; } ;
struct nvkm_disp {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_disp*) ;} ;


 struct nvkm_disp* nvkm_disp (struct nvkm_engine*) ;
 int stub1 (struct nvkm_disp*) ;

__attribute__((used)) static void
nvkm_disp_intr(struct nvkm_engine *engine)
{
 struct nvkm_disp *disp = nvkm_disp(engine);
 disp->func->intr(disp);
}
