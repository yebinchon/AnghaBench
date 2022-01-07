
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct adf_accel_dev {int dummy; } ;


 int adf_cleanup_accel (struct adf_accel_dev*) ;
 int adf_cleanup_pci_dev (struct adf_accel_dev*) ;
 int adf_dev_shutdown (struct adf_accel_dev*) ;
 int adf_dev_stop (struct adf_accel_dev*) ;
 struct adf_accel_dev* adf_devmgr_pci_to_accel_dev (struct pci_dev*) ;
 int kfree (struct adf_accel_dev*) ;
 int pr_err (char*) ;

__attribute__((used)) static void adf_remove(struct pci_dev *pdev)
{
 struct adf_accel_dev *accel_dev = adf_devmgr_pci_to_accel_dev(pdev);

 if (!accel_dev) {
  pr_err("QAT: Driver removal failed\n");
  return;
 }
 adf_dev_stop(accel_dev);
 adf_dev_shutdown(accel_dev);
 adf_cleanup_accel(accel_dev);
 adf_cleanup_pci_dev(accel_dev);
 kfree(accel_dev);
}
