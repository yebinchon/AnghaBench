
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct nvkm_mmu {size_t heap_nr; TYPE_1__* heap; } ;
struct TYPE_2__ {scalar_t__ size; int type; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int WARN_ON (int) ;

__attribute__((used)) static int
nvkm_mmu_heap(struct nvkm_mmu *mmu, u8 type, u64 size)
{
 if (size) {
  if (!WARN_ON(mmu->heap_nr == ARRAY_SIZE(mmu->heap))) {
   mmu->heap[mmu->heap_nr].type = type;
   mmu->heap[mmu->heap_nr].size = size;
   return mmu->heap_nr++;
  }
 }
 return -EINVAL;
}
