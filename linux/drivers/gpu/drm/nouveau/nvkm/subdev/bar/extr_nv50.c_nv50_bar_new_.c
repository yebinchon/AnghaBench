
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct nvkm_bar_func {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct nv50_bar {struct nvkm_bar base; int pgd_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv50_bar* kzalloc (int,int ) ;
 int nvkm_bar_ctor (struct nvkm_bar_func const*,struct nvkm_device*,int,struct nvkm_bar*) ;

int
nv50_bar_new_(const struct nvkm_bar_func *func, struct nvkm_device *device,
       int index, u32 pgd_addr, struct nvkm_bar **pbar)
{
 struct nv50_bar *bar;
 if (!(bar = kzalloc(sizeof(*bar), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_bar_ctor(func, device, index, &bar->base);
 bar->pgd_addr = pgd_addr;
 *pbar = &bar->base;
 return 0;
}
