
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct gart_device {int pte_lock; } ;
typedef unsigned long phys_addr_t ;
typedef int dma_addr_t ;


 unsigned long EINVAL ;
 unsigned long GART_PAGE_MASK ;
 int GART_PAGE_SIZE ;
 struct gart_device* gart_handle ;
 scalar_t__ gart_iova_range_invalid (struct gart_device*,int ,int ) ;
 unsigned long gart_read_pte (struct gart_device*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static phys_addr_t gart_iommu_iova_to_phys(struct iommu_domain *domain,
        dma_addr_t iova)
{
 struct gart_device *gart = gart_handle;
 unsigned long pte;

 if (gart_iova_range_invalid(gart, iova, GART_PAGE_SIZE))
  return -EINVAL;

 spin_lock(&gart->pte_lock);
 pte = gart_read_pte(gart, iova);
 spin_unlock(&gart->pte_lock);

 return pte & GART_PAGE_MASK;
}
