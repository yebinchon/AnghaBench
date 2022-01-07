
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {TYPE_1__* ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* detach_dev ) (struct iommu_domain*,struct device*) ;scalar_t__ (* is_attach_deferred ) (struct iommu_domain*,struct device*) ;} ;


 scalar_t__ stub1 (struct iommu_domain*,struct device*) ;
 int stub2 (struct iommu_domain*,struct device*) ;
 int trace_detach_device_from_domain (struct device*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __iommu_detach_device(struct iommu_domain *domain,
      struct device *dev)
{
 if ((domain->ops->is_attach_deferred != ((void*)0)) &&
     domain->ops->is_attach_deferred(domain, dev))
  return;

 if (unlikely(domain->ops->detach_dev == ((void*)0)))
  return;

 domain->ops->detach_dev(domain, dev);
 trace_detach_device_from_domain(dev);
}
