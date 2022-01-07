
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GCR3_VALID ;
 int PAGE_MASK ;
 int free_gcr3_tbl_level1 (int*) ;
 int* iommu_phys_to_virt (int) ;

__attribute__((used)) static void free_gcr3_tbl_level2(u64 *tbl)
{
 u64 *ptr;
 int i;

 for (i = 0; i < 512; ++i) {
  if (!(tbl[i] & GCR3_VALID))
   continue;

  ptr = iommu_phys_to_virt(tbl[i] & PAGE_MASK);

  free_gcr3_tbl_level1(ptr);
 }
}
