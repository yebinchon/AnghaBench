
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oproxy_func {int dummy; } ;
struct nvkm_oproxy {struct nvkm_oproxy_func const* func; int base; } ;
struct nvkm_oclass {int dummy; } ;


 int nvkm_object_ctor (int *,struct nvkm_oclass const*,int *) ;
 int nvkm_oproxy_func ;

void
nvkm_oproxy_ctor(const struct nvkm_oproxy_func *func,
   const struct nvkm_oclass *oclass, struct nvkm_oproxy *oproxy)
{
 nvkm_object_ctor(&nvkm_oproxy_func, oclass, &oproxy->base);
 oproxy->func = func;
}
