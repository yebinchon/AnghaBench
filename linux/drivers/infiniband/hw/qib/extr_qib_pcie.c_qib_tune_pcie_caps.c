
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qib_devdata {struct pci_dev* pcidev; } ;
struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ffs (int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_is_root_bus (TYPE_1__*) ;
 int pcie_get_mps (struct pci_dev*) ;
 int pcie_get_readrq (struct pci_dev*) ;
 int pcie_set_mps (struct pci_dev*,int) ;
 int pcie_set_readrq (struct pci_dev*,int) ;
 int qib_devinfo (struct pci_dev*,char*) ;
 int qib_pcie_caps ;

__attribute__((used)) static void qib_tune_pcie_caps(struct qib_devdata *dd)
{
 struct pci_dev *parent;
 u16 rc_mpss, rc_mps, ep_mpss, ep_mps;
 u16 rc_mrrs, ep_mrrs, max_mrrs;


 parent = dd->pcidev->bus->self;
 if (!pci_is_root_bus(parent->bus)) {
  qib_devinfo(dd->pcidev, "Parent not root\n");
  return;
 }

 if (!pci_is_pcie(parent) || !pci_is_pcie(dd->pcidev))
  return;

 rc_mpss = parent->pcie_mpss;
 rc_mps = ffs(pcie_get_mps(parent)) - 8;

 ep_mpss = dd->pcidev->pcie_mpss;
 ep_mps = ffs(pcie_get_mps(dd->pcidev)) - 8;


 if (rc_mpss > ep_mpss)
  rc_mpss = ep_mpss;


 if (rc_mpss > (qib_pcie_caps & 7))
  rc_mpss = qib_pcie_caps & 7;

 if (rc_mpss > rc_mps) {
  rc_mps = rc_mpss;
  pcie_set_mps(parent, 128 << rc_mps);
 }

 if (rc_mpss > ep_mps) {
  ep_mps = rc_mpss;
  pcie_set_mps(dd->pcidev, 128 << ep_mps);
 }






 max_mrrs = 5;
 if (max_mrrs > ((qib_pcie_caps >> 4) & 7))
  max_mrrs = (qib_pcie_caps >> 4) & 7;

 max_mrrs = 128 << max_mrrs;
 rc_mrrs = pcie_get_readrq(parent);
 ep_mrrs = pcie_get_readrq(dd->pcidev);

 if (max_mrrs > rc_mrrs) {
  rc_mrrs = max_mrrs;
  pcie_set_readrq(parent, rc_mrrs);
 }
 if (max_mrrs > ep_mrrs) {
  ep_mrrs = max_mrrs;
  pcie_set_readrq(dd->pcidev, ep_mrrs);
 }
}
