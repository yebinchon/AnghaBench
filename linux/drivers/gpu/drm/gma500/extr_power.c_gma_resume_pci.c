
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int saveVBT; int saveBSM; } ;
struct drm_psb_private {int suspended; int msi_data; int msi_addr; TYPE_1__ regs; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PCI_D0 ;
 int PSB_PCIx_MSI_ADDR_LOC ;
 int PSB_PCIx_MSI_DATA_LOC ;
 int dev_err (int *,char*,int) ;
 int pci_enable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static bool gma_resume_pci(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct drm_psb_private *dev_priv = dev->dev_private;
 int ret;

 if (!dev_priv->suspended)
  return 1;

 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 pci_write_config_dword(pdev, 0x5c, dev_priv->regs.saveBSM);
 pci_write_config_dword(pdev, 0xFC, dev_priv->regs.saveVBT);

 pci_write_config_dword(pdev, PSB_PCIx_MSI_ADDR_LOC, dev_priv->msi_addr);
 pci_write_config_dword(pdev, PSB_PCIx_MSI_DATA_LOC, dev_priv->msi_data);
 ret = pci_enable_device(pdev);

 if (ret != 0)
  dev_err(&pdev->dev, "pci_enable failed: %d\n", ret);
 else
  dev_priv->suspended = 0;
 return !dev_priv->suspended;
}
