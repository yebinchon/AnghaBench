
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc_func {int dummy; } ;
struct nvkm_mc {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_mc* kzalloc (int,int ) ;
 int nvkm_mc_ctor (struct nvkm_mc_func const*,struct nvkm_device*,int,struct nvkm_mc*) ;

int
nvkm_mc_new_(const struct nvkm_mc_func *func, struct nvkm_device *device,
      int index, struct nvkm_mc **pmc)
{
 struct nvkm_mc *mc;
 if (!(mc = *pmc = kzalloc(sizeof(*mc), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_mc_ctor(func, device, index, *pmc);
 return 0;
}
