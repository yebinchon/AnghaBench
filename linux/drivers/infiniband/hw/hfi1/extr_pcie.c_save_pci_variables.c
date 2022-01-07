
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int pci_tph2; int pcidev; int pci_msix0; int pcie_devctl2; int pcie_lnkctl; int pcie_devctl; int pci_command; int pci_rom; int pcibar1; int pcibar0; } ;


 int PCIE_CFG_TPH2 ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_1 ;
 int PCI_CFG_MSIX0 ;
 int PCI_COMMAND ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXT_CAP_ID_TPH ;
 int PCI_ROM_ADDRESS ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 scalar_t__ pci_find_ext_capability (int ,int ) ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_read_config_word (int ,int ,int *) ;
 int pcie_capability_read_word (int ,int ,int *) ;

int save_pci_variables(struct hfi1_devdata *dd)
{
 int ret = 0;

 ret = pci_read_config_dword(dd->pcidev, PCI_BASE_ADDRESS_0,
        &dd->pcibar0);
 if (ret)
  goto error;

 ret = pci_read_config_dword(dd->pcidev, PCI_BASE_ADDRESS_1,
        &dd->pcibar1);
 if (ret)
  goto error;

 ret = pci_read_config_dword(dd->pcidev, PCI_ROM_ADDRESS, &dd->pci_rom);
 if (ret)
  goto error;

 ret = pci_read_config_word(dd->pcidev, PCI_COMMAND, &dd->pci_command);
 if (ret)
  goto error;

 ret = pcie_capability_read_word(dd->pcidev, PCI_EXP_DEVCTL,
     &dd->pcie_devctl);
 if (ret)
  goto error;

 ret = pcie_capability_read_word(dd->pcidev, PCI_EXP_LNKCTL,
     &dd->pcie_lnkctl);
 if (ret)
  goto error;

 ret = pcie_capability_read_word(dd->pcidev, PCI_EXP_DEVCTL2,
     &dd->pcie_devctl2);
 if (ret)
  goto error;

 ret = pci_read_config_dword(dd->pcidev, PCI_CFG_MSIX0, &dd->pci_msix0);
 if (ret)
  goto error;

 if (pci_find_ext_capability(dd->pcidev, PCI_EXT_CAP_ID_TPH)) {
  ret = pci_read_config_dword(dd->pcidev, PCIE_CFG_TPH2,
         &dd->pci_tph2);
  if (ret)
   goto error;
 }
 return 0;

error:
 dd_dev_err(dd, "Unable to read from PCI config\n");
 return ret;
}
