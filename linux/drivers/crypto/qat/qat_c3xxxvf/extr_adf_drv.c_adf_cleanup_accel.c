
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_bar {scalar_t__ virt_addr; } ;
struct adf_accel_pci {TYPE_1__* pci_dev; struct adf_bar* pci_bars; } ;
struct adf_accel_dev {int debugfs_dir; int * hw_device; struct adf_accel_pci accel_pci_dev; } ;
struct TYPE_2__ {int device; int physfn; } ;



 int ADF_PCI_MAX_BARS ;
 int adf_cfg_dev_remove (struct adf_accel_dev*) ;
 int adf_clean_hw_data_c3xxxiov (int *) ;
 struct adf_accel_dev* adf_devmgr_pci_to_accel_dev (int ) ;
 int adf_devmgr_rm_dev (struct adf_accel_dev*,struct adf_accel_dev*) ;
 int debugfs_remove (int ) ;
 int kfree (int *) ;
 int pci_iounmap (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void adf_cleanup_accel(struct adf_accel_dev *accel_dev)
{
 struct adf_accel_pci *accel_pci_dev = &accel_dev->accel_pci_dev;
 struct adf_accel_dev *pf;
 int i;

 for (i = 0; i < ADF_PCI_MAX_BARS; i++) {
  struct adf_bar *bar = &accel_pci_dev->pci_bars[i];

  if (bar->virt_addr)
   pci_iounmap(accel_pci_dev->pci_dev, bar->virt_addr);
 }

 if (accel_dev->hw_device) {
  switch (accel_pci_dev->pci_dev->device) {
  case 128:
   adf_clean_hw_data_c3xxxiov(accel_dev->hw_device);
   break;
  default:
   break;
  }
  kfree(accel_dev->hw_device);
  accel_dev->hw_device = ((void*)0);
 }
 adf_cfg_dev_remove(accel_dev);
 debugfs_remove(accel_dev->debugfs_dir);
 pf = adf_devmgr_pci_to_accel_dev(accel_pci_dev->pci_dev->physfn);
 adf_devmgr_rm_dev(accel_dev, pf);
}
