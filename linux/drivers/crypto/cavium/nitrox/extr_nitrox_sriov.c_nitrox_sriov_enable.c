
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int num_vfs; int max_vf_queues; } ;
struct nitrox_device {int mode; TYPE_1__ iov; int flags; } ;


 int DEV (struct nitrox_device*) ;
 int EINVAL ;
 int __NDEV_MODE_PF ;
 int __NDEV_SRIOV_BIT ;
 int clear_bit (int ,int *) ;
 int config_nps_core_vfcfg_mode (struct nitrox_device*,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int) ;
 int nitrox_pf_cleanup (struct nitrox_device*) ;
 int nitrox_pf_reinit (struct nitrox_device*) ;
 int nitrox_sriov_init (struct nitrox_device*) ;
 int num_vfs_to_mode (int) ;
 int num_vfs_valid (int) ;
 int pci_disable_sriov (struct pci_dev*) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 struct nitrox_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;
 int set_bit (int ,int *) ;
 int vf_mode_to_nr_queues (int ) ;

__attribute__((used)) static int nitrox_sriov_enable(struct pci_dev *pdev, int num_vfs)
{
 struct nitrox_device *ndev = pci_get_drvdata(pdev);
 int err;

 if (!num_vfs_valid(num_vfs)) {
  dev_err(DEV(ndev), "Invalid num_vfs %d\n", num_vfs);
  return -EINVAL;
 }

 if (pci_num_vf(pdev) == num_vfs)
  return num_vfs;

 err = pci_enable_sriov(pdev, num_vfs);
 if (err) {
  dev_err(DEV(ndev), "failed to enable PCI sriov %d\n", err);
  return err;
 }
 dev_info(DEV(ndev), "Enabled VF(s) %d\n", num_vfs);

 ndev->mode = num_vfs_to_mode(num_vfs);
 ndev->iov.num_vfs = num_vfs;
 ndev->iov.max_vf_queues = vf_mode_to_nr_queues(ndev->mode);

 set_bit(__NDEV_SRIOV_BIT, &ndev->flags);


 nitrox_pf_cleanup(ndev);


 err = nitrox_sriov_init(ndev);
 if (err)
  goto iov_fail;

 config_nps_core_vfcfg_mode(ndev, ndev->mode);
 return num_vfs;

iov_fail:
 pci_disable_sriov(pdev);

 clear_bit(__NDEV_SRIOV_BIT, &ndev->flags);
 ndev->iov.num_vfs = 0;
 ndev->mode = __NDEV_MODE_PF;

 nitrox_pf_reinit(ndev);
 return err;
}
