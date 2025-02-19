
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hfi1_devdata {int link_gen3_capable; int lbus_info; TYPE_2__* pcidev; } ;
struct TYPE_5__ {TYPE_1__* bus; } ;
struct TYPE_4__ {scalar_t__ max_bus_speed; struct pci_dev* self; } ;


 int EINVAL ;
 scalar_t__ PCIE_SPEED_8_0GT ;
 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_SLS ;
 int PCI_EXP_LNKCAP_SLS_8_0GB ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int dd_dev_info (struct hfi1_devdata*,char*,...) ;
 int pci_is_pcie (TYPE_2__*) ;
 int pcie_capability_read_dword (TYPE_2__*,int ,int*) ;
 int update_lbus_info (struct hfi1_devdata*) ;

int pcie_speeds(struct hfi1_devdata *dd)
{
 u32 linkcap;
 struct pci_dev *parent = dd->pcidev->bus->self;
 int ret;

 if (!pci_is_pcie(dd->pcidev)) {
  dd_dev_err(dd, "Can't find PCI Express capability!\n");
  return -EINVAL;
 }


 dd->link_gen3_capable = 1;

 ret = pcie_capability_read_dword(dd->pcidev, PCI_EXP_LNKCAP, &linkcap);
 if (ret) {
  dd_dev_err(dd, "Unable to read from PCI config\n");
  return ret;
 }

 if ((linkcap & PCI_EXP_LNKCAP_SLS) != PCI_EXP_LNKCAP_SLS_8_0GB) {
  dd_dev_info(dd,
       "This HFI is not Gen3 capable, max speed 0x%x, need 0x3\n",
       linkcap & PCI_EXP_LNKCAP_SLS);
  dd->link_gen3_capable = 0;
 }




 if (parent && dd->pcidev->bus->max_bus_speed != PCIE_SPEED_8_0GT) {
  dd_dev_info(dd, "Parent PCIe bridge does not support Gen3\n");
  dd->link_gen3_capable = 0;
 }


 update_lbus_info(dd);

 dd_dev_info(dd, "%s\n", dd->lbus_info);

 return 0;
}
