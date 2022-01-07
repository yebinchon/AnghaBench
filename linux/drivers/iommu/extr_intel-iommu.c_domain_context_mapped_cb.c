
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct intel_iommu {int dummy; } ;


 int PCI_BUS_NUM (int) ;
 int device_context_mapped (struct intel_iommu*,int ,int) ;

__attribute__((used)) static int domain_context_mapped_cb(struct pci_dev *pdev,
        u16 alias, void *opaque)
{
 struct intel_iommu *iommu = opaque;

 return !device_context_mapped(iommu, PCI_BUS_NUM(alias), alias & 0xff);
}
