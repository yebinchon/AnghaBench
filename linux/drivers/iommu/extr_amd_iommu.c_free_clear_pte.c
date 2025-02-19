
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;


 int IOMMU_PTE_MODE (scalar_t__) ;
 scalar_t__ IOMMU_PTE_PAGE (scalar_t__) ;
 int IOMMU_PTE_PRESENT (scalar_t__) ;
 scalar_t__ cmpxchg64 (scalar_t__*,scalar_t__,int ) ;
 struct page* free_sub_pt (unsigned long,int,struct page*) ;
 int pr_warn (char*) ;

__attribute__((used)) static struct page *free_clear_pte(u64 *pte, u64 pteval, struct page *freelist)
{
 unsigned long pt;
 int mode;

 while (cmpxchg64(pte, pteval, 0) != pteval) {
  pr_warn("AMD-Vi: IOMMU pte changed since we read it\n");
  pteval = *pte;
 }

 if (!IOMMU_PTE_PRESENT(pteval))
  return freelist;

 pt = (unsigned long)IOMMU_PTE_PAGE(pteval);
 mode = IOMMU_PTE_MODE(pteval);

 return free_sub_pt(pt, mode, freelist);
}
