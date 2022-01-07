
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_xtensa {TYPE_2__* func; } ;
struct TYPE_3__ {scalar_t__ oclass; } ;
struct nvkm_oclass {TYPE_1__ base; int engine; } ;
struct TYPE_4__ {TYPE_1__* sclass; } ;


 struct nvkm_xtensa* nvkm_xtensa (int ) ;

__attribute__((used)) static int
nvkm_xtensa_oclass_get(struct nvkm_oclass *oclass, int index)
{
 struct nvkm_xtensa *xtensa = nvkm_xtensa(oclass->engine);
 int c = 0;

 while (xtensa->func->sclass[c].oclass) {
  if (c++ == index) {
   oclass->base = xtensa->func->sclass[index];
   return index;
  }
 }

 return c;
}
