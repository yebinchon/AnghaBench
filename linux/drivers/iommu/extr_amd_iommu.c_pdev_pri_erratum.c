
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct iommu_dev_data {int errata; } ;


 struct iommu_dev_data* get_dev_data (int *) ;

__attribute__((used)) static bool pdev_pri_erratum(struct pci_dev *pdev, u32 erratum)
{
 struct iommu_dev_data *dev_data;

 dev_data = get_dev_data(&pdev->dev);

 return dev_data->errata & (1 << erratum) ? 1 : 0;
}
