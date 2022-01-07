
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {int branchmap_werrors; int fsb_error_regs; int branch_0; int branch_1; } ;


 int pci_dev_put (int ) ;

__attribute__((used)) static void i5400_put_devices(struct mem_ctl_info *mci)
{
 struct i5400_pvt *pvt;

 pvt = mci->pvt_info;


 pci_dev_put(pvt->branch_1);
 pci_dev_put(pvt->branch_0);
 pci_dev_put(pvt->fsb_error_regs);
 pci_dev_put(pvt->branchmap_werrors);
}
