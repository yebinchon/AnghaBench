
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_dev {int atomic_cap; } ;
struct pci_dev {int dummy; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*) ;
 int IB_ATOMIC_GLOB ;
 int IB_ATOMIC_NONE ;
 int PCI_EXP_DEVCAP2_ATOMIC_COMP64 ;
 int QEDR_MSG_INIT ;
 int pci_enable_atomic_ops_to_root (struct pci_dev*,int ) ;

__attribute__((used)) static void qedr_pci_set_atomic(struct qedr_dev *dev, struct pci_dev *pdev)
{
 int rc = pci_enable_atomic_ops_to_root(pdev,
            PCI_EXP_DEVCAP2_ATOMIC_COMP64);

 if (rc) {
  dev->atomic_cap = IB_ATOMIC_NONE;
  DP_DEBUG(dev, QEDR_MSG_INIT, "Atomic capability disabled\n");
 } else {
  dev->atomic_cap = IB_ATOMIC_GLOB;
  DP_DEBUG(dev, QEDR_MSG_INIT, "Atomic capability enabled\n");
 }
}
