
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_oclass {struct nvkm_disp_oclass const* engn; int base; int engine; } ;
struct nvkm_disp_oclass {int base; } ;
struct nvkm_disp {TYPE_1__* func; } ;
struct nvkm_device_oclass {int dummy; } ;
struct TYPE_2__ {struct nvkm_disp_oclass* (* root ) (struct nvkm_disp*) ;} ;


 struct nvkm_disp* nvkm_disp (int ) ;
 struct nvkm_device_oclass nvkm_disp_sclass ;
 struct nvkm_disp_oclass* stub1 (struct nvkm_disp*) ;

__attribute__((used)) static int
nvkm_disp_class_get(struct nvkm_oclass *oclass, int index,
      const struct nvkm_device_oclass **class)
{
 struct nvkm_disp *disp = nvkm_disp(oclass->engine);
 if (index == 0) {
  const struct nvkm_disp_oclass *root = disp->func->root(disp);
  oclass->base = root->base;
  oclass->engn = root;
  *class = &nvkm_disp_sclass;
  return 0;
 }
 return 1;
}
