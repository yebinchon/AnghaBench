
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_instmem {struct nvkm_instmem base; int lru; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nv50_instmem* kzalloc (int,int ) ;
 int nv50_instmem ;
 int nvkm_instmem_ctor (int *,struct nvkm_device*,int,struct nvkm_instmem*) ;

int
nv50_instmem_new(struct nvkm_device *device, int index,
   struct nvkm_instmem **pimem)
{
 struct nv50_instmem *imem;

 if (!(imem = kzalloc(sizeof(*imem), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_instmem_ctor(&nv50_instmem, device, index, &imem->base);
 INIT_LIST_HEAD(&imem->lru);
 *pimem = &imem->base;
 return 0;
}
