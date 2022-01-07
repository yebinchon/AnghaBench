
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int lock; } ;
typedef int dma_addr_t ;


 int amd_iommu_np_cache ;
 int domain_flush_complete (struct protection_domain*) ;
 int domain_flush_pages (struct protection_domain*,int ,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void domain_flush_np_cache(struct protection_domain *domain,
  dma_addr_t iova, size_t size)
{
 if (unlikely(amd_iommu_np_cache)) {
  unsigned long flags;

  spin_lock_irqsave(&domain->lock, flags);
  domain_flush_pages(domain, iova, size);
  domain_flush_complete(domain);
  spin_unlock_irqrestore(&domain->lock, flags);
 }
}
