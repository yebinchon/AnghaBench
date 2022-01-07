
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_oproxy_func {int dummy; } ;
struct nvkm_oproxy {int dummy; } ;
struct nvkm_oclass {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_oproxy* kzalloc (int,int ) ;
 int nvkm_oproxy_ctor (struct nvkm_oproxy_func const*,struct nvkm_oclass const*,struct nvkm_oproxy*) ;

int
nvkm_oproxy_new_(const struct nvkm_oproxy_func *func,
   const struct nvkm_oclass *oclass, struct nvkm_oproxy **poproxy)
{
 if (!(*poproxy = kzalloc(sizeof(**poproxy), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_oproxy_ctor(func, oclass, *poproxy);
 return 0;
}
