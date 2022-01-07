
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {int dev; struct pci_bus* bus; } ;
struct pci_bus {struct pci_dev* self; struct pci_bus* parent; } ;
struct iommu_group {int dummy; } ;
struct group_for_pci_data {struct pci_dev* pdev; struct iommu_group* group; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct iommu_group* ERR_PTR (int ) ;
 int REQ_ACS_FLAGS ;
 scalar_t__ WARN_ON (int) ;
 int dev_is_pci (struct device*) ;
 struct iommu_group* get_pci_alias_group (struct pci_dev*,unsigned long*) ;
 int get_pci_alias_or_group ;
 struct iommu_group* get_pci_function_alias_group (struct pci_dev*,unsigned long*) ;
 struct iommu_group* iommu_group_alloc () ;
 struct iommu_group* iommu_group_get (int *) ;
 scalar_t__ pci_acs_path_enabled (struct pci_dev*,int *,int ) ;
 scalar_t__ pci_for_each_dma_alias (struct pci_dev*,int ,struct group_for_pci_data*) ;
 int pci_is_root_bus (struct pci_bus*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

struct iommu_group *pci_device_group(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct group_for_pci_data data;
 struct pci_bus *bus;
 struct iommu_group *group = ((void*)0);
 u64 devfns[4] = { 0 };

 if (WARN_ON(!dev_is_pci(dev)))
  return ERR_PTR(-EINVAL);







 if (pci_for_each_dma_alias(pdev, get_pci_alias_or_group, &data))
  return data.group;

 pdev = data.pdev;







 for (bus = pdev->bus; !pci_is_root_bus(bus); bus = bus->parent) {
  if (!bus->self)
   continue;

  if (pci_acs_path_enabled(bus->self, ((void*)0), REQ_ACS_FLAGS))
   break;

  pdev = bus->self;

  group = iommu_group_get(&pdev->dev);
  if (group)
   return group;
 }





 group = get_pci_alias_group(pdev, (unsigned long *)devfns);
 if (group)
  return group;






 group = get_pci_function_alias_group(pdev, (unsigned long *)devfns);
 if (group)
  return group;


 return iommu_group_alloc();
}
