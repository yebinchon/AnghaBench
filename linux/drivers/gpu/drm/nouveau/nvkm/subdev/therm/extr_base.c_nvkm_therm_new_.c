
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm_func {int dummy; } ;
struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_therm* kzalloc (int,int ) ;
 int nvkm_therm_ctor (struct nvkm_therm*,struct nvkm_device*,int,struct nvkm_therm_func const*) ;

int
nvkm_therm_new_(const struct nvkm_therm_func *func, struct nvkm_device *device,
  int index, struct nvkm_therm **ptherm)
{
 struct nvkm_therm *therm;

 if (!(therm = *ptherm = kzalloc(sizeof(*therm), GFP_KERNEL)))
  return -ENOMEM;

 nvkm_therm_ctor(therm, device, index, func);
 return 0;
}
