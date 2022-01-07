
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 struct iommu_group* acpihid_device_group (struct device*) ;
 scalar_t__ dev_is_pci (struct device*) ;
 struct iommu_group* pci_device_group (struct device*) ;

__attribute__((used)) static struct iommu_group *amd_iommu_device_group(struct device *dev)
{
 if (dev_is_pci(dev))
  return pci_device_group(dev);

 return acpihid_device_group(dev);
}
