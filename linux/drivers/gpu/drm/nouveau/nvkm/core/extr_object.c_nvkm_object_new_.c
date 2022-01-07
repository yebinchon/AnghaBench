
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object_func {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 struct nvkm_object* kzalloc (int,int ) ;
 int nvkm_object_ctor (struct nvkm_object_func const*,struct nvkm_oclass const*,struct nvkm_object*) ;

int
nvkm_object_new_(const struct nvkm_object_func *func,
   const struct nvkm_oclass *oclass, void *data, u32 size,
   struct nvkm_object **pobject)
{
 if (size == 0) {
  if (!(*pobject = kzalloc(sizeof(**pobject), GFP_KERNEL)))
   return -ENOMEM;
  nvkm_object_ctor(func, oclass, *pobject);
  return 0;
 }
 return -ENOSYS;
}
