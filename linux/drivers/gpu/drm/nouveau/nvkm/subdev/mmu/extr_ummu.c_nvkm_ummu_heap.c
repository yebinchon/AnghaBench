
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct nvkm_ummu {struct nvkm_mmu* mmu; } ;
struct nvkm_mmu {size_t heap_nr; TYPE_1__* heap; } ;
struct nvif_mmu_heap_v0 {size_t index; int size; } ;
struct TYPE_2__ {int size; } ;


 int EINVAL ;
 int ENOSYS ;
 int nvif_unpack (int,void**,int *,struct nvif_mmu_heap_v0,int ,int ,int) ;

__attribute__((used)) static int
nvkm_ummu_heap(struct nvkm_ummu *ummu, void *argv, u32 argc)
{
 struct nvkm_mmu *mmu = ummu->mmu;
 union {
  struct nvif_mmu_heap_v0 v0;
 } *args = argv;
 int ret = -ENOSYS;
 u8 index;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  if ((index = args->v0.index) >= mmu->heap_nr)
   return -EINVAL;
  args->v0.size = mmu->heap[index].size;
 } else
  return ret;

 return 0;
}
