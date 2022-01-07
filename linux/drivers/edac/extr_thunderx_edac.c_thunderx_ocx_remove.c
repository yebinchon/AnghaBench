
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_ocx {int debugfs; scalar_t__ regs; } ;
struct pci_dev {int dev; } ;
struct edac_device_ctl_info {struct thunderx_ocx* pvt_info; } ;


 int OCX_COM_INT_ENA_ALL ;
 scalar_t__ OCX_COM_INT_ENA_W1C ;
 int OCX_COM_LINKX_INT_ENA_ALL ;
 scalar_t__ OCX_COM_LINKX_INT_ENA_W1C (int) ;
 int OCX_INTS ;
 int edac_debugfs_remove_recursive (int ) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 struct edac_device_ctl_info* pci_get_drvdata (struct pci_dev*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunderx_ocx_remove(struct pci_dev *pdev)
{
 struct edac_device_ctl_info *edac_dev = pci_get_drvdata(pdev);
 struct thunderx_ocx *ocx = edac_dev->pvt_info;
 int i;

 writeq(OCX_COM_INT_ENA_ALL, ocx->regs + OCX_COM_INT_ENA_W1C);

 for (i = 0; i < OCX_INTS; i++) {
  writeq(OCX_COM_LINKX_INT_ENA_ALL,
         ocx->regs + OCX_COM_LINKX_INT_ENA_W1C(i));
 }

 edac_debugfs_remove_recursive(ocx->debugfs);

 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(edac_dev);
}
