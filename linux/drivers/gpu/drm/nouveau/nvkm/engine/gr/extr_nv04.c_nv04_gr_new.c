
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv04_gr {struct nvkm_gr base; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_gr* kzalloc (int,int ) ;
 int nv04_gr ;
 int nvkm_gr_ctor (int *,struct nvkm_device*,int,int,struct nvkm_gr*) ;
 int spin_lock_init (int *) ;

int
nv04_gr_new(struct nvkm_device *device, int index, struct nvkm_gr **pgr)
{
 struct nv04_gr *gr;

 if (!(gr = kzalloc(sizeof(*gr), GFP_KERNEL)))
  return -ENOMEM;
 spin_lock_init(&gr->lock);
 *pgr = &gr->base;

 return nvkm_gr_ctor(&nv04_gr, device, index, 1, &gr->base);
}
