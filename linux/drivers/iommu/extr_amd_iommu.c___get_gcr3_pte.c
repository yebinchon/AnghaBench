
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GCR3_VALID ;
 int GFP_ATOMIC ;
 int PAGE_MASK ;
 scalar_t__ get_zeroed_page (int ) ;
 int* iommu_phys_to_virt (int) ;
 int iommu_virt_to_phys (int*) ;

__attribute__((used)) static u64 *__get_gcr3_pte(u64 *root, int level, int pasid, bool alloc)
{
 int index;
 u64 *pte;

 while (1) {

  index = (pasid >> (9 * level)) & 0x1ff;
  pte = &root[index];

  if (level == 0)
   break;

  if (!(*pte & GCR3_VALID)) {
   if (!alloc)
    return ((void*)0);

   root = (void *)get_zeroed_page(GFP_ATOMIC);
   if (root == ((void*)0))
    return ((void*)0);

   *pte = iommu_virt_to_phys(root) | GCR3_VALID;
  }

  root = iommu_phys_to_virt(*pte & PAGE_MASK);

  level -= 1;
 }

 return pte;
}
