
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct intel_iommu {int dummy; } ;
struct dmar_drhd_unit {struct intel_iommu* iommu; } ;


 struct dmar_drhd_unit* dmar_find_matched_drhd_unit (struct pci_dev*) ;

__attribute__((used)) static struct intel_iommu *map_dev_to_ir(struct pci_dev *dev)
{
 struct dmar_drhd_unit *drhd;

 drhd = dmar_find_matched_drhd_unit(dev);
 if (!drhd)
  return ((void*)0);

 return drhd->iommu;
}
