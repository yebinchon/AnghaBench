
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int pci_dev_16_1_fsb_addr_map; int pci_dev_16_2_fsb_err_regs; int * pci_dev_2x_0_fbd_branch; } ;


 int MAX_CH_PER_BRANCH ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void i7300_put_devices(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 int branch;

 pvt = mci->pvt_info;


 for (branch = 0; branch < MAX_CH_PER_BRANCH; branch++)
  pci_dev_put(pvt->pci_dev_2x_0_fbd_branch[branch]);
 pci_dev_put(pvt->pci_dev_16_2_fsb_err_regs);
 pci_dev_put(pvt->pci_dev_16_1_fsb_addr_map);
}
