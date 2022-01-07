
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_RD890_IOMMU ;
 scalar_t__ PCI_VENDOR_ID_ATI ;

__attribute__((used)) static inline bool is_rd890_iommu(struct pci_dev *pdev)
{
 return (pdev->vendor == PCI_VENDOR_ID_ATI) &&
        (pdev->device == PCI_DEVICE_ID_RD890_IOMMU);
}
