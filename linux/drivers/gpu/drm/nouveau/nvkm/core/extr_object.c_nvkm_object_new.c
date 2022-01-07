
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_object_func* func; } ;
struct nvkm_oclass {TYPE_1__ base; } ;
struct nvkm_object_func {int dummy; } ;
struct nvkm_object {int dummy; } ;


 struct nvkm_object_func nvkm_object_func ;
 int nvkm_object_new_ (struct nvkm_object_func const*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

int
nvkm_object_new(const struct nvkm_oclass *oclass, void *data, u32 size,
  struct nvkm_object **pobject)
{
 const struct nvkm_object_func *func =
  oclass->base.func ? oclass->base.func : &nvkm_object_func;
 return nvkm_object_new_(func, oclass, data, size, pobject);
}
