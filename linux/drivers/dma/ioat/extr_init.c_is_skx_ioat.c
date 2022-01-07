
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL_IOAT_SKX ;

__attribute__((used)) static inline bool is_skx_ioat(struct pci_dev *pdev)
{
 return (pdev->device == PCI_DEVICE_ID_INTEL_IOAT_SKX) ? 1 : 0;
}
