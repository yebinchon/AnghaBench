
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_SEC_STATUS ;
 int PCI_STATUS ;
 int PCI_STATUS_DETECTED_PARITY ;
 int PCI_STATUS_PARITY ;
 int PCI_STATUS_SIG_SYSTEM_ERROR ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static u16 get_pci_parity_status(struct pci_dev *dev, int secondary)
{
 int where;
 u16 status;

 where = secondary ? PCI_SEC_STATUS : PCI_STATUS;
 pci_read_config_word(dev, where, &status);






 if (status == 0xFFFF) {
  u32 sanity;

  pci_read_config_dword(dev, 0, &sanity);

  if (sanity == 0xFFFFFFFF)
   return 0;
 }

 status &= PCI_STATUS_DETECTED_PARITY | PCI_STATUS_SIG_SYSTEM_ERROR |
  PCI_STATUS_PARITY;

 if (status)

  pci_write_config_word(dev, where, status);

 return status;
}
