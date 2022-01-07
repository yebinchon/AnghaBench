
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int pci_dev_16_1_fsb_addr_map; } ;


 int EMASK_FBD ;
 int EMASK_FBD_ERR_MASK ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_dword (int ,int ,int ) ;

__attribute__((used)) static void i7300_enable_error_reporting(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt = mci->pvt_info;
 u32 fbd_error_mask;


 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
         EMASK_FBD, &fbd_error_mask);


 fbd_error_mask &= ~(EMASK_FBD_ERR_MASK);

 pci_write_config_dword(pvt->pci_dev_16_1_fsb_addr_map,
          EMASK_FBD, fbd_error_mask);
}
