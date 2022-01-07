
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oclass; } ;
struct nvkm_oclass {TYPE_1__ base; int engine; } ;
struct nvkm_falcon {TYPE_2__* func; } ;
struct TYPE_4__ {TYPE_1__* sclass; } ;


 struct nvkm_falcon* nvkm_falcon (int ) ;

__attribute__((used)) static int
nvkm_falcon_oclass_get(struct nvkm_oclass *oclass, int index)
{
 struct nvkm_falcon *falcon = nvkm_falcon(oclass->engine);
 int c = 0;

 while (falcon->func->sclass[c].oclass) {
  if (c++ == index) {
   oclass->base = falcon->func->sclass[index];
   return index;
  }
 }

 return c;
}
