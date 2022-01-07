
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_sw {TYPE_3__* func; } ;
struct TYPE_4__ {int ctor; } ;
struct nvkm_oclass {TYPE_1__ base; TYPE_2__* engn; int engine; } ;
struct TYPE_6__ {TYPE_2__* sclass; } ;
struct TYPE_5__ {TYPE_1__ base; scalar_t__ ctor; } ;


 struct nvkm_sw* nvkm_sw (int ) ;
 int nvkm_sw_oclass_new ;

__attribute__((used)) static int
nvkm_sw_oclass_get(struct nvkm_oclass *oclass, int index)
{
 struct nvkm_sw *sw = nvkm_sw(oclass->engine);
 int c = 0;

 while (sw->func->sclass[c].ctor) {
  if (c++ == index) {
   oclass->engn = &sw->func->sclass[index];
   oclass->base = sw->func->sclass[index].base;
   oclass->base.ctor = nvkm_sw_oclass_new;
   return index;
  }
 }

 return c;
}
