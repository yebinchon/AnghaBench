
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qib_devdata {int pcidev; int pcibar1; int pcibar0; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_COMMAND ;
 int PCI_INTERRUPT_LINE ;
 int pci_enable_device (int ) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int pci_write_config_word (int ,int ,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;

void qib_pcie_reenable(struct qib_devdata *dd, u16 cmd, u8 iline, u8 cline)
{
 int r;

 r = pci_write_config_dword(dd->pcidev, PCI_BASE_ADDRESS_0,
       dd->pcibar0);
 if (r)
  qib_dev_err(dd, "rewrite of BAR0 failed: %d\n", r);
 r = pci_write_config_dword(dd->pcidev, PCI_BASE_ADDRESS_1,
       dd->pcibar1);
 if (r)
  qib_dev_err(dd, "rewrite of BAR1 failed: %d\n", r);

 pci_write_config_word(dd->pcidev, PCI_COMMAND, cmd);
 pci_write_config_byte(dd->pcidev, PCI_INTERRUPT_LINE, iline);
 pci_write_config_byte(dd->pcidev, PCI_CACHE_LINE_SIZE, cline);
 r = pci_enable_device(dd->pcidev);
 if (r)
  qib_dev_err(dd,
   "pci_enable_device failed after reset: %d\n", r);
}
