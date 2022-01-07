
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct gart_device {int pte_lock; } ;
typedef scalar_t__ phys_addr_t ;


 int EINVAL ;
 int __gart_iommu_map (struct gart_device*,unsigned long,unsigned long) ;
 struct gart_device* gart_handle ;
 scalar_t__ gart_iova_range_invalid (struct gart_device*,unsigned long,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int gart_iommu_map(struct iommu_domain *domain, unsigned long iova,
     phys_addr_t pa, size_t bytes, int prot)
{
 struct gart_device *gart = gart_handle;
 int ret;

 if (gart_iova_range_invalid(gart, iova, bytes))
  return -EINVAL;

 spin_lock(&gart->pte_lock);
 ret = __gart_iommu_map(gart, iova, (unsigned long)pa);
 spin_unlock(&gart->pte_lock);

 return ret;
}
