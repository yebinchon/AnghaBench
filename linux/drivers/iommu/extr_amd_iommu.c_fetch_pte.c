
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {int mode; int * pt_root; } ;


 int * IOMMU_PTE_PAGE (int ) ;
 int IOMMU_PTE_PRESENT (int ) ;
 int PAGE_MODE_7_LEVEL ;
 size_t PM_LEVEL_INDEX (int,unsigned long) ;
 unsigned long PM_LEVEL_SIZE (int) ;
 int PM_PTE_LEVEL (int ) ;
 unsigned long PTE_LEVEL_PAGE_SIZE (int) ;
 int * first_pte_l7 (int *,unsigned long*,int *) ;

__attribute__((used)) static u64 *fetch_pte(struct protection_domain *domain,
        unsigned long address,
        unsigned long *page_size)
{
 int level;
 u64 *pte;

 *page_size = 0;

 if (address > PM_LEVEL_SIZE(domain->mode))
  return ((void*)0);

 level = domain->mode - 1;
 pte = &domain->pt_root[PM_LEVEL_INDEX(level, address)];
 *page_size = PTE_LEVEL_PAGE_SIZE(level);

 while (level > 0) {


  if (!IOMMU_PTE_PRESENT(*pte))
   return ((void*)0);


  if (PM_PTE_LEVEL(*pte) == 7 ||
      PM_PTE_LEVEL(*pte) == 0)
   break;


  if (PM_PTE_LEVEL(*pte) != level)
   return ((void*)0);

  level -= 1;


  pte = IOMMU_PTE_PAGE(*pte);
  pte = &pte[PM_LEVEL_INDEX(level, address)];
  *page_size = PTE_LEVEL_PAGE_SIZE(level);
 }





 if (PM_PTE_LEVEL(*pte) == PAGE_MODE_7_LEVEL)
  pte = first_pte_l7(pte, page_size, ((void*)0));

 return pte;
}
