
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_dev_data {scalar_t__ domain; } ;
struct device {int * dma_ops; } ;
struct amd_iommu {int iommu; } ;


 struct amd_iommu** amd_iommu_rlookup_table ;
 int detach_device (struct device*) ;
 int get_device_id (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 struct iommu_dev_data* search_dev_data (int) ;

__attribute__((used)) static void iommu_uninit_device(struct device *dev)
{
 struct iommu_dev_data *dev_data;
 struct amd_iommu *iommu;
 int devid;

 devid = get_device_id(dev);
 if (devid < 0)
  return;

 iommu = amd_iommu_rlookup_table[devid];

 dev_data = search_dev_data(devid);
 if (!dev_data)
  return;

 if (dev_data->domain)
  detach_device(dev);

 iommu_device_unlink(&iommu->iommu, dev);

 iommu_group_remove_device(dev);


 dev->dma_ops = ((void*)0);





}
