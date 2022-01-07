
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_mmu_pt {int * v; } ;


 size_t psb_mmu_pt_index (unsigned long) ;

__attribute__((used)) static inline void psb_mmu_set_pte(struct psb_mmu_pt *pt, unsigned long addr,
       uint32_t pte)
{
 pt->v[psb_mmu_pt_index(addr)] = pte;
}
