
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_iommu {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int dev_is_pci (struct device*) ;
 int device_context_mapped (struct intel_iommu*,int ,int ) ;
 struct intel_iommu* device_to_iommu (struct device*,int *,int *) ;
 int domain_context_mapped_cb ;
 int pci_for_each_dma_alias (int ,int ,struct intel_iommu*) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static int domain_context_mapped(struct device *dev)
{
 struct intel_iommu *iommu;
 u8 bus, devfn;

 iommu = device_to_iommu(dev, &bus, &devfn);
 if (!iommu)
  return -ENODEV;

 if (!dev_is_pci(dev))
  return device_context_mapped(iommu, bus, devfn);

 return !pci_for_each_dma_alias(to_pci_dev(dev),
           domain_context_mapped_cb, iommu);
}
