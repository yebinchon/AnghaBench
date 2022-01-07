
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct gart_device {scalar_t__ active_devices; int dom_lock; int * active_domain; } ;
struct TYPE_2__ {struct iommu_domain* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 struct gart_device* gart_handle ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void gart_iommu_detach_dev(struct iommu_domain *domain,
      struct device *dev)
{
 struct gart_device *gart = gart_handle;

 spin_lock(&gart->dom_lock);

 if (dev->archdata.iommu == domain) {
  dev->archdata.iommu = ((void*)0);

  if (--gart->active_devices == 0)
   gart->active_domain = ((void*)0);
 }

 spin_unlock(&gart->dom_lock);
}
