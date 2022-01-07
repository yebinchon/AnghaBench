
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_vf_queues; scalar_t__ num_vfs; } ;
struct nitrox_device {int mode; TYPE_1__ iov; int flags; } ;


 int DEV (struct nitrox_device*) ;
 int EPERM ;
 int __NDEV_MODE_PF ;
 int __NDEV_SRIOV_BIT ;
 int clear_bit (int ,int *) ;
 int config_nps_core_vfcfg_mode (struct nitrox_device*,int ) ;
 int dev_warn (int ,char*) ;
 int nitrox_pf_reinit (struct nitrox_device*) ;
 int nitrox_sriov_cleanup (struct nitrox_device*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct nitrox_device* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ pci_vfs_assigned (struct pci_dev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int nitrox_sriov_disable(struct pci_dev *pdev)
{
 struct nitrox_device *ndev = pci_get_drvdata(pdev);

 if (!test_bit(__NDEV_SRIOV_BIT, &ndev->flags))
  return 0;

 if (pci_vfs_assigned(pdev)) {
  dev_warn(DEV(ndev), "VFs are attached to VM. Can't disable SR-IOV\n");
  return -EPERM;
 }
 pci_disable_sriov(pdev);

 clear_bit(__NDEV_SRIOV_BIT, &ndev->flags);

 ndev->iov.num_vfs = 0;
 ndev->iov.max_vf_queues = 0;
 ndev->mode = __NDEV_MODE_PF;


 nitrox_sriov_cleanup(ndev);

 config_nps_core_vfcfg_mode(ndev, ndev->mode);

 return nitrox_pf_reinit(ndev);
}
