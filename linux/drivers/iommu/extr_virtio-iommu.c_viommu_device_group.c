
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 struct iommu_group* generic_device_group (struct device*) ;
 struct iommu_group* pci_device_group (struct device*) ;

__attribute__((used)) static struct iommu_group *viommu_device_group(struct device *dev)
{
 if (dev_is_pci(dev))
  return pci_device_group(dev);
 else
  return generic_device_group(dev);
}
