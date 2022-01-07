
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oclass {int base; } ;
struct nvkm_device_oclass {int base; } ;


 struct nvkm_device_oclass nvkm_pm_oclass ;

__attribute__((used)) static int
nvkm_pm_oclass_get(struct nvkm_oclass *oclass, int index,
     const struct nvkm_device_oclass **class)
{
 if (index == 0) {
  oclass->base = nvkm_pm_oclass.base;
  *class = &nvkm_pm_oclass;
  return index;
 }
 return 1;
}
