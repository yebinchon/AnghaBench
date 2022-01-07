
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i5000_pvt* pvt_info; } ;
struct i5000_pvt {scalar_t__ maxch; int branch_1; int branch_0; int fsb_error_regs; int branchmap_werrors; } ;


 scalar_t__ CHANNELS_PER_BRANCH ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void i5000_put_devices(struct mem_ctl_info *mci)
{
 struct i5000_pvt *pvt;

 pvt = mci->pvt_info;

 pci_dev_put(pvt->branchmap_werrors);
 pci_dev_put(pvt->fsb_error_regs);
 pci_dev_put(pvt->branch_0);


 if (pvt->maxch >= CHANNELS_PER_BRANCH)
  pci_dev_put(pvt->branch_1);
}
