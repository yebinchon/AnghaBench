
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ vendor; } ;


 scalar_t__ PCI_VENDOR_ID_NVIDIA ;

__attribute__((used)) static inline u8 amd_offset(struct pci_dev *dev)
{
 return (dev->vendor == PCI_VENDOR_ID_NVIDIA) ? 0x10 : 0;
}
