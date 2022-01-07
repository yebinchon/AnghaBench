
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_mmu {size_t type_nr; TYPE_2__* type; TYPE_1__* heap; } ;
struct TYPE_4__ {int type; int heap; } ;
struct TYPE_3__ {int type; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int WARN_ON (int) ;

__attribute__((used)) static void
nvkm_mmu_type(struct nvkm_mmu *mmu, int heap, u8 type)
{
 if (heap >= 0 && !WARN_ON(mmu->type_nr == ARRAY_SIZE(mmu->type))) {
  mmu->type[mmu->type_nr].type = type | mmu->heap[heap].type;
  mmu->type[mmu->type_nr].heap = heap;
  mmu->type_nr++;
 }
}
