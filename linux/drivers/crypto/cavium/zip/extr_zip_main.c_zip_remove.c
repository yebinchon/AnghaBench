
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;
union zip_cmd_ctl {int u_reg64; TYPE_1__ s; } ;
struct zip_device {size_t index; scalar_t__ reg_base; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ ZIP_CMD_CTL ;
 int ZIP_NUM_QUEUES ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 struct zip_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int zip_cmd_qbuf_free (struct zip_device*,int) ;
 int ** zip_dev ;
 int zip_reg_write (int,scalar_t__) ;

__attribute__((used)) static void zip_remove(struct pci_dev *pdev)
{
 struct zip_device *zip = pci_get_drvdata(pdev);
 union zip_cmd_ctl cmd_ctl;
 int q = 0;

 if (!zip)
  return;

 if (zip->reg_base) {
  cmd_ctl.u_reg64 = 0x0ull;
  cmd_ctl.s.reset = 1;
  zip_reg_write(cmd_ctl.u_reg64, (zip->reg_base + ZIP_CMD_CTL));
  iounmap(zip->reg_base);
 }

 pci_release_regions(pdev);
 pci_disable_device(pdev);





 for (q = 0; q < ZIP_NUM_QUEUES; q++)
  zip_cmd_qbuf_free(zip, q);

 pci_set_drvdata(pdev, ((void*)0));

 zip_dev[zip->index] = ((void*)0);
}
