
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct group_for_pci_data {int * group; struct pci_dev* pdev; } ;


 int * iommu_group_get (int *) ;

__attribute__((used)) static int get_pci_alias_or_group(struct pci_dev *pdev, u16 alias, void *opaque)
{
 struct group_for_pci_data *data = opaque;

 data->pdev = pdev;
 data->group = iommu_group_get(&pdev->dev);

 return data->group != ((void*)0);
}
