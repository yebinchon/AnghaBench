
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_sclass {int ctor; scalar_t__ oclass; } ;
struct nvkm_gr {int dummy; } ;
struct gf100_gr {TYPE_1__* func; } ;
struct TYPE_2__ {struct nvkm_sclass* sclass; } ;


 struct gf100_gr* gf100_gr (struct nvkm_gr*) ;
 int gf100_gr_object_new ;

__attribute__((used)) static int
gf100_gr_object_get(struct nvkm_gr *base, int index, struct nvkm_sclass *sclass)
{
 struct gf100_gr *gr = gf100_gr(base);
 int c = 0;

 while (gr->func->sclass[c].oclass) {
  if (c++ == index) {
   *sclass = gr->func->sclass[index];
   sclass->ctor = gf100_gr_object_new;
   return index;
  }
 }

 return c;
}
