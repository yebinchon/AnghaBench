
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct iommu_dev_data {int errata; } ;


 int amd_iommu_v2_supported () ;
 struct iommu_dev_data* get_dev_data (int *) ;

void amd_iommu_enable_device_erratum(struct pci_dev *pdev, u32 erratum)
{
 struct iommu_dev_data *dev_data;

 if (!amd_iommu_v2_supported())
  return;

 dev_data = get_dev_data(&pdev->dev);
 dev_data->errata |= (1 << erratum);
}
