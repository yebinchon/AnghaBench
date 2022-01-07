
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_mmu_ptp {int base; int shift; int head; int pt; int mask; int free; struct nvkm_mmu_ptp* ptp; } ;
struct nvkm_mmu_pt {int base; int shift; int head; int pt; int mask; int free; struct nvkm_mmu_pt* ptp; } ;
struct TYPE_2__ {int list; } ;
struct nvkm_mmu {TYPE_1__ ptp; } ;


 int BIT (int const) ;
 int kfree (struct nvkm_mmu_ptp*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int nvkm_mmu_ptc_put (struct nvkm_mmu*,int,int *) ;

__attribute__((used)) static void
nvkm_mmu_ptp_put(struct nvkm_mmu *mmu, bool force, struct nvkm_mmu_pt *pt)
{
 const int slot = pt->base >> pt->ptp->shift;
 struct nvkm_mmu_ptp *ptp = pt->ptp;




 if (!ptp->free)
  list_add(&ptp->head, &mmu->ptp.list);
 ptp->free |= BIT(slot);


 if (ptp->free == ptp->mask) {
  nvkm_mmu_ptc_put(mmu, force, &ptp->pt);
  list_del(&ptp->head);
  kfree(ptp);
 }

 kfree(pt);
}
