
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int saveBSM; int saveVBT; } ;
struct drm_psb_private {int suspended; int msi_addr; int msi_data; TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PCI_D3hot ;
 int PSB_PCIx_MSI_ADDR_LOC ;
 int PSB_PCIx_MSI_DATA_LOC ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static void gma_suspend_pci(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct drm_psb_private *dev_priv = dev->dev_private;
 int bsm, vbt;

 if (dev_priv->suspended)
  return;

 pci_save_state(pdev);
 pci_read_config_dword(pdev, 0x5C, &bsm);
 dev_priv->regs.saveBSM = bsm;
 pci_read_config_dword(pdev, 0xFC, &vbt);
 dev_priv->regs.saveVBT = vbt;
 pci_read_config_dword(pdev, PSB_PCIx_MSI_ADDR_LOC, &dev_priv->msi_addr);
 pci_read_config_dword(pdev, PSB_PCIx_MSI_DATA_LOC, &dev_priv->msi_data);

 pci_disable_device(pdev);
 pci_set_power_state(pdev, PCI_D3hot);

 dev_priv->suspended = 1;
}
