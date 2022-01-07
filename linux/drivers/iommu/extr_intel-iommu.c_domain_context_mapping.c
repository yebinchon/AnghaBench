
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pasid_table {int dummy; } ;
struct intel_iommu {int dummy; } ;
struct domain_context_mapping_data {struct pasid_table* table; struct intel_iommu* iommu; struct dmar_domain* domain; } ;
struct dmar_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int dev_is_pci (struct device*) ;
 struct intel_iommu* device_to_iommu (struct device*,int *,int *) ;
 int domain_context_mapping_cb ;
 int domain_context_mapping_one (struct dmar_domain*,struct intel_iommu*,struct pasid_table*,int ,int ) ;
 struct pasid_table* intel_pasid_get_table (struct device*) ;
 int pci_for_each_dma_alias (int ,int *,struct domain_context_mapping_data*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int
domain_context_mapping(struct dmar_domain *domain, struct device *dev)
{
 struct domain_context_mapping_data data;
 struct pasid_table *table;
 struct intel_iommu *iommu;
 u8 bus, devfn;

 iommu = device_to_iommu(dev, &bus, &devfn);
 if (!iommu)
  return -ENODEV;

 table = intel_pasid_get_table(dev);

 if (!dev_is_pci(dev))
  return domain_context_mapping_one(domain, iommu, table,
        bus, devfn);

 data.domain = domain;
 data.iommu = iommu;
 data.table = table;

 return pci_for_each_dma_alias(to_pci_dev(dev),
          &domain_context_mapping_cb, &data);
}
