
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_ops {int (* map ) (struct iommu_domain*,unsigned long,unsigned long,size_t,int) ;int (* iotlb_sync_map ) (struct iommu_domain*) ;} ;
struct iommu_domain {unsigned long pgsize_bitmap; int type; struct iommu_ops* ops; } ;
typedef unsigned long phys_addr_t ;


 int EINVAL ;
 int ENODEV ;
 int IS_ALIGNED (unsigned long,unsigned int) ;
 int __IOMMU_DOMAIN_PAGING ;
 int __ffs (unsigned long) ;
 size_t iommu_pgsize (struct iommu_domain*,unsigned long,size_t) ;
 int iommu_unmap (struct iommu_domain*,unsigned long,size_t) ;
 int pr_debug (char*,unsigned long,unsigned long*,size_t) ;
 int pr_err (char*,unsigned long,unsigned long*,size_t,unsigned int) ;
 int stub1 (struct iommu_domain*,unsigned long,unsigned long,size_t,int) ;
 int stub2 (struct iommu_domain*) ;
 int trace_map (unsigned long,unsigned long,size_t) ;
 scalar_t__ unlikely (int) ;

int iommu_map(struct iommu_domain *domain, unsigned long iova,
       phys_addr_t paddr, size_t size, int prot)
{
 const struct iommu_ops *ops = domain->ops;
 unsigned long orig_iova = iova;
 unsigned int min_pagesz;
 size_t orig_size = size;
 phys_addr_t orig_paddr = paddr;
 int ret = 0;

 if (unlikely(ops->map == ((void*)0) ||
       domain->pgsize_bitmap == 0UL))
  return -ENODEV;

 if (unlikely(!(domain->type & __IOMMU_DOMAIN_PAGING)))
  return -EINVAL;


 min_pagesz = 1 << __ffs(domain->pgsize_bitmap);






 if (!IS_ALIGNED(iova | paddr | size, min_pagesz)) {
  pr_err("unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%x\n",
         iova, &paddr, size, min_pagesz);
  return -EINVAL;
 }

 pr_debug("map: iova 0x%lx pa %pa size 0x%zx\n", iova, &paddr, size);

 while (size) {
  size_t pgsize = iommu_pgsize(domain, iova | paddr, size);

  pr_debug("mapping: iova 0x%lx pa %pa pgsize 0x%zx\n",
    iova, &paddr, pgsize);

  ret = ops->map(domain, iova, paddr, pgsize, prot);
  if (ret)
   break;

  iova += pgsize;
  paddr += pgsize;
  size -= pgsize;
 }

 if (ops->iotlb_sync_map)
  ops->iotlb_sync_map(domain);


 if (ret)
  iommu_unmap(domain, orig_iova, orig_size - size);
 else
  trace_map(orig_iova, orig_paddr, orig_size);

 return ret;
}
