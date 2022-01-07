
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct fpga_manager {struct altera_cvp_conf* priv; } ;
struct altera_cvp_conf {scalar_t__ map; } ;


 int CVP_BAR ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,scalar_t__) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void altera_cvp_remove(struct pci_dev *pdev)
{
 struct fpga_manager *mgr = pci_get_drvdata(pdev);
 struct altera_cvp_conf *conf = mgr->priv;
 u16 cmd;

 fpga_mgr_unregister(mgr);
 if (conf->map)
  pci_iounmap(pdev, conf->map);
 pci_release_region(pdev, CVP_BAR);
 pci_read_config_word(pdev, PCI_COMMAND, &cmd);
 cmd &= ~PCI_COMMAND_MEMORY;
 pci_write_config_word(pdev, PCI_COMMAND, cmd);
}
