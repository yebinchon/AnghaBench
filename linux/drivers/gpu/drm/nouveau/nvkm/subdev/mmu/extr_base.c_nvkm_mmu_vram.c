
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_4__* func; TYPE_1__ subdev; } ;
struct nvkm_mm {int dummy; } ;
struct nvkm_device {TYPE_5__* bar; TYPE_3__* fb; } ;
struct TYPE_10__ {int iomap_uncached; } ;
struct TYPE_9__ {int kind; } ;
struct TYPE_8__ {TYPE_2__* ram; } ;
struct TYPE_7__ {struct nvkm_mm vram; } ;


 int NVKM_MEM_COHERENT ;
 int NVKM_MEM_COMP ;
 int NVKM_MEM_DISP ;
 int NVKM_MEM_KIND ;
 int NVKM_MEM_MAPPABLE ;
 int NVKM_MEM_UNCACHED ;
 int NVKM_MEM_VRAM ;
 int NVKM_RAM_MM_MIXED ;
 int NVKM_RAM_MM_NOMAP ;
 int NVKM_RAM_MM_NORMAL ;
 int const NVKM_RAM_MM_SHIFT ;
 int nvkm_mm_heap_size (struct nvkm_mm*,int ) ;
 int nvkm_mmu_heap (struct nvkm_mmu*,int,int const) ;
 int nvkm_mmu_host (struct nvkm_mmu*) ;
 int nvkm_mmu_type (struct nvkm_mmu*,int,int) ;

__attribute__((used)) static void
nvkm_mmu_vram(struct nvkm_mmu *mmu)
{
 struct nvkm_device *device = mmu->subdev.device;
 struct nvkm_mm *mm = &device->fb->ram->vram;
 const u32 sizeN = nvkm_mm_heap_size(mm, NVKM_RAM_MM_NORMAL);
 const u32 sizeU = nvkm_mm_heap_size(mm, NVKM_RAM_MM_NOMAP);
 const u32 sizeM = nvkm_mm_heap_size(mm, NVKM_RAM_MM_MIXED);
 u8 type = NVKM_MEM_KIND * !!mmu->func->kind;
 u8 heap = NVKM_MEM_VRAM;
 int heapM, heapN, heapU;


 heapM = nvkm_mmu_heap(mmu, heap, sizeM << NVKM_RAM_MM_SHIFT);

 heap |= NVKM_MEM_COMP;
 heap |= NVKM_MEM_DISP;
 heapN = nvkm_mmu_heap(mmu, heap, sizeN << NVKM_RAM_MM_SHIFT);
 heapU = nvkm_mmu_heap(mmu, heap, sizeU << NVKM_RAM_MM_SHIFT);





 nvkm_mmu_type(mmu, heapU, type);
 nvkm_mmu_type(mmu, heapN, type);
 nvkm_mmu_type(mmu, heapM, type);





 nvkm_mmu_host(mmu);




 if (device->bar) {

  type |= NVKM_MEM_MAPPABLE;
  if (!device->bar->iomap_uncached) {
   nvkm_mmu_type(mmu, heapN, type);
   nvkm_mmu_type(mmu, heapM, type);
  }


  type |= NVKM_MEM_COHERENT;
  type |= NVKM_MEM_UNCACHED;
  nvkm_mmu_type(mmu, heapN, type);
  nvkm_mmu_type(mmu, heapM, type);
 }
}
