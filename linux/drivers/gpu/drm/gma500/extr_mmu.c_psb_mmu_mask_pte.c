
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int PAGE_SHIFT ;
 int PSB_MMU_CACHED_MEMORY ;
 int PSB_MMU_RO_MEMORY ;
 int PSB_MMU_WO_MEMORY ;
 int PSB_PTE_CACHED ;
 int PSB_PTE_RO ;
 int PSB_PTE_VALID ;
 int PSB_PTE_WO ;

__attribute__((used)) static inline uint32_t psb_mmu_mask_pte(uint32_t pfn, int type)
{
 uint32_t mask = PSB_PTE_VALID;

 if (type & PSB_MMU_CACHED_MEMORY)
  mask |= PSB_PTE_CACHED;
 if (type & PSB_MMU_RO_MEMORY)
  mask |= PSB_PTE_RO;
 if (type & PSB_MMU_WO_MEMORY)
  mask |= PSB_PTE_WO;

 return (pfn << PAGE_SHIFT) | mask;
}
