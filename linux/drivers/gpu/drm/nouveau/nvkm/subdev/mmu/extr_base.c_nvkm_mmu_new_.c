
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_mmu_func {int dummy; } ;
struct nvkm_mmu {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_mmu* kzalloc (int,int ) ;
 int nvkm_mmu_ctor (struct nvkm_mmu_func const*,struct nvkm_device*,int,struct nvkm_mmu*) ;

int
nvkm_mmu_new_(const struct nvkm_mmu_func *func, struct nvkm_device *device,
       int index, struct nvkm_mmu **pmmu)
{
 if (!(*pmmu = kzalloc(sizeof(**pmmu), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_mmu_ctor(func, device, index, *pmmu);
 return 0;
}
