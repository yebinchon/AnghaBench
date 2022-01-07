
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_mmu_pt {int memory; TYPE_2__* ptc; int head; scalar_t__ sub; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_4__ {int mutex; } ;
struct nvkm_mmu {TYPE_3__ ptc; TYPE_1__ ptp; } ;
struct TYPE_5__ {int refs; int item; } ;


 int kfree (struct nvkm_mmu_pt*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_memory_unref (int *) ;
 int nvkm_mmu_ptp_put (struct nvkm_mmu*,int,struct nvkm_mmu_pt*) ;

void
nvkm_mmu_ptc_put(struct nvkm_mmu *mmu, bool force, struct nvkm_mmu_pt **ppt)
{
 struct nvkm_mmu_pt *pt = *ppt;
 if (pt) {

  if (pt->sub) {
   mutex_lock(&mmu->ptp.mutex);
   nvkm_mmu_ptp_put(mmu, force, pt);
   mutex_unlock(&mmu->ptp.mutex);
   return;
  }


  mutex_lock(&mmu->ptc.mutex);
  if (pt->ptc->refs < 8 && !force) {
   list_add_tail(&pt->head, &pt->ptc->item);
   pt->ptc->refs++;
  } else {
   nvkm_memory_unref(&pt->memory);
   kfree(pt);
  }
  mutex_unlock(&mmu->ptc.mutex);
 }
}
