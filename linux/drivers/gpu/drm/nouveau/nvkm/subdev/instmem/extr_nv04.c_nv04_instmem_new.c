
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_instmem {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv04_instmem {struct nvkm_instmem base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_instmem* kzalloc (int,int ) ;
 int nv04_instmem ;
 int nvkm_instmem_ctor (int *,struct nvkm_device*,int,struct nvkm_instmem*) ;

int
nv04_instmem_new(struct nvkm_device *device, int index,
   struct nvkm_instmem **pimem)
{
 struct nv04_instmem *imem;

 if (!(imem = kzalloc(sizeof(*imem), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_instmem_ctor(&nv04_instmem, device, index, &imem->base);
 *pimem = &imem->base;
 return 0;
}
