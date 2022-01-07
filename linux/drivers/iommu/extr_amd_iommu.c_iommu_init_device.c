
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_dev_data {size_t devid; int iommu_v2; int alias; } ;
struct TYPE_2__ {struct iommu_dev_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct amd_iommu {int iommu; int is_iommu_v2; } ;


 int ENOMEM ;
 int amd_iommu_force_isolation ;
 struct amd_iommu** amd_iommu_rlookup_table ;
 scalar_t__ dev_is_pci (struct device*) ;
 struct iommu_dev_data* find_dev_data (int) ;
 int get_alias (struct device*) ;
 int get_device_id (struct device*) ;
 scalar_t__ iommu_default_passthrough () ;
 int iommu_device_link (int *,struct device*) ;
 scalar_t__ pci_iommuv2_capable (int ) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int iommu_init_device(struct device *dev)
{
 struct iommu_dev_data *dev_data;
 struct amd_iommu *iommu;
 int devid;

 if (dev->archdata.iommu)
  return 0;

 devid = get_device_id(dev);
 if (devid < 0)
  return devid;

 iommu = amd_iommu_rlookup_table[devid];

 dev_data = find_dev_data(devid);
 if (!dev_data)
  return -ENOMEM;

 dev_data->alias = get_alias(dev);







 if ((iommu_default_passthrough() || !amd_iommu_force_isolation) &&
     dev_is_pci(dev) && pci_iommuv2_capable(to_pci_dev(dev))) {
  struct amd_iommu *iommu;

  iommu = amd_iommu_rlookup_table[dev_data->devid];
  dev_data->iommu_v2 = iommu->is_iommu_v2;
 }

 dev->archdata.iommu = dev_data;

 iommu_device_link(&iommu->iommu, dev);

 return 0;
}
