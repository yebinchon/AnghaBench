
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_l2c {int debugfs; scalar_t__ regs; } ;
struct pci_dev {int device; int dev; } ;
struct edac_device_ctl_info {struct thunderx_l2c* pvt_info; } ;


 int L2C_CBC_INT_ENA_ALL ;
 scalar_t__ L2C_CBC_INT_ENA_W1C ;
 int L2C_MCI_INT_ENA_ALL ;
 scalar_t__ L2C_MCI_INT_ENA_W1C ;
 int L2C_TAD_INT_ENA_ALL ;
 scalar_t__ L2C_TAD_INT_ENA_W1C ;



 int edac_debugfs_remove_recursive (int ) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* pci_get_drvdata (struct pci_dev*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunderx_l2c_remove(struct pci_dev *pdev)
{
 struct edac_device_ctl_info *edac_dev = pci_get_drvdata(pdev);
 struct thunderx_l2c *l2c = edac_dev->pvt_info;

 switch (pdev->device) {
 case 128:
  writeq(L2C_TAD_INT_ENA_ALL, l2c->regs + L2C_TAD_INT_ENA_W1C);
  break;
 case 130:
  writeq(L2C_CBC_INT_ENA_ALL, l2c->regs + L2C_CBC_INT_ENA_W1C);
  break;
 case 129:
  writeq(L2C_MCI_INT_ENA_ALL, l2c->regs + L2C_MCI_INT_ENA_W1C);
  break;
 }

 edac_debugfs_remove_recursive(l2c->debugfs);

 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(edac_dev);
}
