
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct dmar_domain {int dummy; } ;
struct device_domain_info {struct dmar_domain* domain; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 struct device_domain_info* DEFER_DEVICE_DOMAIN_INFO ;
 int intel_iommu_attach_device (struct iommu_domain*,struct device*) ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 scalar_t__ likely (struct device_domain_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dmar_domain *find_domain(struct device *dev)
{
 struct device_domain_info *info;

 if (unlikely(dev->archdata.iommu == DEFER_DEVICE_DOMAIN_INFO)) {
  struct iommu_domain *domain;

  dev->archdata.iommu = ((void*)0);
  domain = iommu_get_domain_for_dev(dev);
  if (domain)
   intel_iommu_attach_device(domain, dev);
 }


 info = dev->archdata.iommu;

 if (likely(info))
  return info->domain;
 return ((void*)0);
}
