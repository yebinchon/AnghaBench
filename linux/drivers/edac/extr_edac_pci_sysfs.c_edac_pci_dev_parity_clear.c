
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 int PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int get_pci_parity_status (struct pci_dev*,int) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void edac_pci_dev_parity_clear(struct pci_dev *dev)
{
 u8 header_type;

 get_pci_parity_status(dev, 0);


 pci_read_config_byte(dev, PCI_HEADER_TYPE, &header_type);

 if ((header_type & 0x7F) == PCI_HEADER_TYPE_BRIDGE)
  get_pci_parity_status(dev, 1);
}
