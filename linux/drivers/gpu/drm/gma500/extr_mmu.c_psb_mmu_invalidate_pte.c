
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_mmu_pt {TYPE_1__* pd; int * v; } ;
struct TYPE_2__ {int invalid_pte; } ;


 size_t psb_mmu_pt_index (unsigned long) ;

__attribute__((used)) static inline void psb_mmu_invalidate_pte(struct psb_mmu_pt *pt,
       unsigned long addr)
{
 pt->v[psb_mmu_pt_index(addr)] = pt->pd->invalid_pte;
}
