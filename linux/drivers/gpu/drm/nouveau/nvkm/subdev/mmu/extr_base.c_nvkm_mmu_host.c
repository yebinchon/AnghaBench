
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_1__* func; TYPE_4__ subdev; } ;
struct nvkm_device {TYPE_3__* func; TYPE_2__* bar; } ;
struct TYPE_7__ {scalar_t__ cpu_coherent; } ;
struct TYPE_6__ {scalar_t__ iomap_uncached; } ;
struct TYPE_5__ {int kind_sys; } ;


 int NVKM_MEM_COHERENT ;
 int NVKM_MEM_HOST ;
 int NVKM_MEM_KIND ;
 int NVKM_MEM_MAPPABLE ;
 int NVKM_MEM_UNCACHED ;
 int nvkm_mmu_heap (struct nvkm_mmu*,int ,unsigned long long) ;
 int nvkm_mmu_type (struct nvkm_mmu*,int,int) ;

__attribute__((used)) static void
nvkm_mmu_host(struct nvkm_mmu *mmu)
{
 struct nvkm_device *device = mmu->subdev.device;
 u8 type = NVKM_MEM_KIND * !!mmu->func->kind_sys;
 int heap;


 heap = nvkm_mmu_heap(mmu, NVKM_MEM_HOST, ~0ULL);
 nvkm_mmu_type(mmu, heap, type);







 type |= NVKM_MEM_MAPPABLE;
 if (!device->bar || device->bar->iomap_uncached)
  nvkm_mmu_type(mmu, heap, type & ~NVKM_MEM_KIND);
 else
  nvkm_mmu_type(mmu, heap, type);







 type |= NVKM_MEM_COHERENT;
 if (device->func->cpu_coherent)
  nvkm_mmu_type(mmu, heap, type & ~NVKM_MEM_KIND);


 nvkm_mmu_type(mmu, heap, type |= NVKM_MEM_UNCACHED);
}
