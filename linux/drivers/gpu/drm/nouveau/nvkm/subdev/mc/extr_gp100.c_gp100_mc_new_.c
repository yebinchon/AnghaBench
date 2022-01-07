
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mc_func {int dummy; } ;
struct nvkm_mc {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gp100_mc {int intr; int mask; int lock; struct nvkm_mc base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct gp100_mc* kzalloc (int,int ) ;
 int nvkm_mc_ctor (struct nvkm_mc_func const*,struct nvkm_device*,int,struct nvkm_mc*) ;
 int spin_lock_init (int *) ;

int
gp100_mc_new_(const struct nvkm_mc_func *func, struct nvkm_device *device,
       int index, struct nvkm_mc **pmc)
{
 struct gp100_mc *mc;

 if (!(mc = kzalloc(sizeof(*mc), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_mc_ctor(func, device, index, &mc->base);
 *pmc = &mc->base;

 spin_lock_init(&mc->lock);
 mc->intr = 0;
 mc->mask = 0x7fffffff;
 return 0;
}
