
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct protection_domain {int mode; scalar_t__* pt_root; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 scalar_t__* IOMMU_PTE_PAGE (scalar_t__) ;
 scalar_t__ IOMMU_PTE_PRESENT (scalar_t__) ;
 int PAGE_MODE_7_LEVEL ;
 int PAGE_MODE_NONE ;
 unsigned long PAGE_SIZE_ALIGN (unsigned long,unsigned long) ;
 int PAGE_SIZE_LEVEL (unsigned long) ;
 size_t PM_LEVEL_INDEX (int,unsigned long) ;
 scalar_t__ PM_LEVEL_PDE (int,int ) ;
 unsigned long PM_LEVEL_SIZE (int) ;
 int PM_PTE_LEVEL (scalar_t__) ;
 scalar_t__ cmpxchg64 (scalar_t__*,scalar_t__,scalar_t__) ;
 scalar_t__* first_pte_l7 (scalar_t__*,int *,unsigned long*) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 scalar_t__ increase_address_space (struct protection_domain*,unsigned long,int ) ;
 int iommu_virt_to_phys (scalar_t__*) ;
 int is_power_of_2 (unsigned long) ;

__attribute__((used)) static u64 *alloc_pte(struct protection_domain *domain,
        unsigned long address,
        unsigned long page_size,
        u64 **pte_page,
        gfp_t gfp,
        bool *updated)
{
 int level, end_lvl;
 u64 *pte, *page;

 BUG_ON(!is_power_of_2(page_size));

 while (address > PM_LEVEL_SIZE(domain->mode))
  *updated = increase_address_space(domain, address, gfp) || *updated;

 level = domain->mode - 1;
 pte = &domain->pt_root[PM_LEVEL_INDEX(level, address)];
 address = PAGE_SIZE_ALIGN(address, page_size);
 end_lvl = PAGE_SIZE_LEVEL(page_size);

 while (level > end_lvl) {
  u64 __pte, __npte;
  int pte_level;

  __pte = *pte;
  pte_level = PM_PTE_LEVEL(__pte);





  if (IOMMU_PTE_PRESENT(__pte) &&
      pte_level == PAGE_MODE_7_LEVEL) {
   unsigned long count, i;
   u64 *lpte;

   lpte = first_pte_l7(pte, ((void*)0), &count);





   for (i = 0; i < count; ++i)
    cmpxchg64(&lpte[i], __pte, 0ULL);

   *updated = 1;
   continue;
  }

  if (!IOMMU_PTE_PRESENT(__pte) ||
      pte_level == PAGE_MODE_NONE) {
   page = (u64 *)get_zeroed_page(gfp);

   if (!page)
    return ((void*)0);

   __npte = PM_LEVEL_PDE(level, iommu_virt_to_phys(page));


   if (cmpxchg64(pte, __pte, __npte) != __pte)
    free_page((unsigned long)page);
   else if (IOMMU_PTE_PRESENT(__pte))
    *updated = 1;

   continue;
  }


  if (pte_level != level)
   return ((void*)0);

  level -= 1;

  pte = IOMMU_PTE_PAGE(__pte);

  if (pte_page && level == end_lvl)
   *pte_page = pte;

  pte = &pte[PM_LEVEL_INDEX(level, address)];
 }

 return pte;
}
