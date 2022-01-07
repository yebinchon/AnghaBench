
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int device_id; int vendor_id; } ;
struct nitrox_device {int bar_addr; int state; TYPE_1__ hw; int refcnt; } ;


 int DEV (struct nitrox_device*) ;
 int __NDEV_NOT_READY ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*,int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct nitrox_device*) ;
 int nitrox_crypto_unregister () ;
 int nitrox_debugfs_exit (struct nitrox_device*) ;
 int nitrox_pf_sw_cleanup (struct nitrox_device*) ;
 int nitrox_remove_from_devlist (struct nitrox_device*) ;
 int nitrox_sriov_configure (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct nitrox_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int refcount_dec_and_test (int *) ;
 int refcount_read (int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static void nitrox_remove(struct pci_dev *pdev)
{
 struct nitrox_device *ndev = pci_get_drvdata(pdev);

 if (!ndev)
  return;

 if (!refcount_dec_and_test(&ndev->refcnt)) {
  dev_err(DEV(ndev), "Device refcnt not zero (%d)\n",
   refcount_read(&ndev->refcnt));
  return;
 }

 dev_info(DEV(ndev), "Removing Device %x:%x\n",
   ndev->hw.vendor_id, ndev->hw.device_id);

 atomic_set(&ndev->state, __NDEV_NOT_READY);

 smp_mb__after_atomic();

 nitrox_remove_from_devlist(ndev);





 nitrox_crypto_unregister();
 nitrox_debugfs_exit(ndev);
 nitrox_pf_sw_cleanup(ndev);

 iounmap(ndev->bar_addr);
 kfree(ndev);

 pci_set_drvdata(pdev, ((void*)0));
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
}
