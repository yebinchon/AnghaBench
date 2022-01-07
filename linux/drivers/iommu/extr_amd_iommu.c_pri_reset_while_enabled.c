
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int EINVAL ;
 int PCI_EXT_CAP_ID_PRI ;
 scalar_t__ PCI_PRI_CTRL ;
 int PCI_PRI_CTRL_RESET ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static int pri_reset_while_enabled(struct pci_dev *pdev)
{
 u16 control;
 int pos;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_PRI);
 if (!pos)
  return -EINVAL;

 pci_read_config_word(pdev, pos + PCI_PRI_CTRL, &control);
 control |= PCI_PRI_CTRL_RESET;
 pci_write_config_word(pdev, pos + PCI_PRI_CTRL, control);

 return 0;
}
