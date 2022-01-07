
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr_func {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_gr {struct nvkm_gr base; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_gr* kzalloc (int,int ) ;
 int nvkm_gr_ctor (struct nvkm_gr_func const*,struct nvkm_device*,int,int,struct nvkm_gr*) ;
 int spin_lock_init (int *) ;

int
nv50_gr_new_(const struct nvkm_gr_func *func, struct nvkm_device *device,
      int index, struct nvkm_gr **pgr)
{
 struct nv50_gr *gr;

 if (!(gr = kzalloc(sizeof(*gr), GFP_KERNEL)))
  return -ENOMEM;
 spin_lock_init(&gr->lock);
 *pgr = &gr->base;

 return nvkm_gr_ctor(func, device, index, 1, &gr->base);
}
