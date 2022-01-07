
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; } ;
struct dw_pci_controller {int bus_num; int bus_cfg; } ;


 int DW_IC_CON_SPEED_MASK ;
 int DW_IC_CON_SPEED_STD ;
 int ENODEV ;

__attribute__((used)) static int mfld_setup(struct pci_dev *pdev, struct dw_pci_controller *c)
{
 switch (pdev->device) {
 case 0x0817:
  c->bus_cfg &= ~DW_IC_CON_SPEED_MASK;
  c->bus_cfg |= DW_IC_CON_SPEED_STD;

 case 0x0818:
 case 0x0819:
  c->bus_num = pdev->device - 0x817 + 3;
  return 0;
 case 0x082C:
 case 0x082D:
 case 0x082E:
  c->bus_num = pdev->device - 0x82C + 0;
  return 0;
 }
 return -ENODEV;
}
