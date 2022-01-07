
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_ops {size_t (* unmap ) (struct iommu_domain*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {unsigned long pgsize_bitmap; int type; struct iommu_ops* ops; } ;


 int IS_ALIGNED (unsigned long,unsigned int) ;
 int __IOMMU_DOMAIN_PAGING ;
 int __ffs (unsigned long) ;
 size_t iommu_pgsize (struct iommu_domain*,unsigned long,size_t) ;
 int pr_debug (char*,unsigned long,size_t) ;
 int pr_err (char*,unsigned long,size_t,unsigned int) ;
 size_t stub1 (struct iommu_domain*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 int trace_unmap (unsigned long,size_t,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static size_t __iommu_unmap(struct iommu_domain *domain,
       unsigned long iova, size_t size,
       struct iommu_iotlb_gather *iotlb_gather)
{
 const struct iommu_ops *ops = domain->ops;
 size_t unmapped_page, unmapped = 0;
 unsigned long orig_iova = iova;
 unsigned int min_pagesz;

 if (unlikely(ops->unmap == ((void*)0) ||
       domain->pgsize_bitmap == 0UL))
  return 0;

 if (unlikely(!(domain->type & __IOMMU_DOMAIN_PAGING)))
  return 0;


 min_pagesz = 1 << __ffs(domain->pgsize_bitmap);






 if (!IS_ALIGNED(iova | size, min_pagesz)) {
  pr_err("unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%x\n",
         iova, size, min_pagesz);
  return 0;
 }

 pr_debug("unmap this: iova 0x%lx size 0x%zx\n", iova, size);





 while (unmapped < size) {
  size_t pgsize = iommu_pgsize(domain, iova, size - unmapped);

  unmapped_page = ops->unmap(domain, iova, pgsize, iotlb_gather);
  if (!unmapped_page)
   break;

  pr_debug("unmapped: iova 0x%lx size 0x%zx\n",
    iova, unmapped_page);

  iova += unmapped_page;
  unmapped += unmapped_page;
 }

 trace_unmap(orig_iova, size, unmapped);
 return unmapped;
}
