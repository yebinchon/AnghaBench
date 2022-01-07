
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_devdata {int lbus_width; int lbus_speed; int lbus_info; int pcidev; } ;


 int PCI_EXP_LNKSTA ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int extract_speed (int ) ;
 int extract_width (int ) ;
 int pcie_capability_read_word (int ,int ,int *) ;
 int snprintf (int ,int,char*,int,int) ;

__attribute__((used)) static void update_lbus_info(struct hfi1_devdata *dd)
{
 u16 linkstat;
 int ret;

 ret = pcie_capability_read_word(dd->pcidev, PCI_EXP_LNKSTA, &linkstat);
 if (ret) {
  dd_dev_err(dd, "Unable to read from PCI config\n");
  return;
 }

 dd->lbus_width = extract_width(linkstat);
 dd->lbus_speed = extract_speed(linkstat);
 snprintf(dd->lbus_info, sizeof(dd->lbus_info),
   "PCIe,%uMHz,x%u", dd->lbus_speed, dd->lbus_width);
}
