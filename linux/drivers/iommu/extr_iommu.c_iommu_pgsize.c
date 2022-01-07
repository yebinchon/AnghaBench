
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {size_t pgsize_bitmap; } ;


 int BUG_ON (int) ;
 unsigned int __ffs (unsigned long) ;
 unsigned int __fls (size_t) ;
 scalar_t__ likely (unsigned long) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static size_t iommu_pgsize(struct iommu_domain *domain,
      unsigned long addr_merge, size_t size)
{
 unsigned int pgsize_idx;
 size_t pgsize;


 pgsize_idx = __fls(size);


 if (likely(addr_merge)) {

  unsigned int align_pgsize_idx = __ffs(addr_merge);
  pgsize_idx = min(pgsize_idx, align_pgsize_idx);
 }


 pgsize = (1UL << (pgsize_idx + 1)) - 1;


 pgsize &= domain->pgsize_bitmap;


 BUG_ON(!pgsize);


 pgsize_idx = __fls(pgsize);
 pgsize = 1UL << pgsize_idx;

 return pgsize;
}
