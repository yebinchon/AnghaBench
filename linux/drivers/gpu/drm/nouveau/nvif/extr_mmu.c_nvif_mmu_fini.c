
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_mmu {int object; int heap; int type; int kind; } ;


 int kfree (int ) ;
 int nvif_object_fini (int *) ;

void
nvif_mmu_fini(struct nvif_mmu *mmu)
{
 kfree(mmu->kind);
 kfree(mmu->type);
 kfree(mmu->heap);
 nvif_object_fini(&mmu->object);
}
