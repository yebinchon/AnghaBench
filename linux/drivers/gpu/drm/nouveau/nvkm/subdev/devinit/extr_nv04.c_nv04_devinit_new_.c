
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_devinit_func {int dummy; } ;
struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv04_devinit {int owner; struct nvkm_devinit base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_devinit* kzalloc (int,int ) ;
 int nvkm_devinit_ctor (struct nvkm_devinit_func const*,struct nvkm_device*,int,struct nvkm_devinit*) ;

int
nv04_devinit_new_(const struct nvkm_devinit_func *func,
    struct nvkm_device *device, int index,
    struct nvkm_devinit **pinit)
{
 struct nv04_devinit *init;

 if (!(init = kzalloc(sizeof(*init), GFP_KERNEL)))
  return -ENOMEM;
 *pinit = &init->base;

 nvkm_devinit_ctor(func, device, index, &init->base);
 init->owner = -1;
 return 0;
}
