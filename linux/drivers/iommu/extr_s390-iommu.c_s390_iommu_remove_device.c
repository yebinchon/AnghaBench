
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpci_dev {int iommu_dev; scalar_t__ s390_domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct zpci_dev* sysdata; } ;


 int iommu_device_unlink (int *,struct device*) ;
 struct iommu_domain* iommu_get_domain_for_dev (struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int s390_iommu_detach_device (struct iommu_domain*,struct device*) ;
 TYPE_1__* to_pci_dev (struct device*) ;

__attribute__((used)) static void s390_iommu_remove_device(struct device *dev)
{
 struct zpci_dev *zdev = to_pci_dev(dev)->sysdata;
 struct iommu_domain *domain;
 if (zdev && zdev->s390_domain) {
  domain = iommu_get_domain_for_dev(dev);
  if (domain)
   s390_iommu_detach_device(domain, dev);
 }

 iommu_device_unlink(&zdev->iommu_dev, dev);
 iommu_group_remove_device(dev);
}
