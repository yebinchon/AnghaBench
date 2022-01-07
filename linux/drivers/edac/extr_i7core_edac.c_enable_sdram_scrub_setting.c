
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int get_sdram_scrub_rate; int set_sdram_scrub_rate; struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {int pci_noncore; } ;


 int MC_CFG_CONTROL ;
 int MC_CFG_UNLOCK ;
 int get_sdram_scrub_rate ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 int set_sdram_scrub_rate ;

__attribute__((used)) static void enable_sdram_scrub_setting(struct mem_ctl_info *mci)
{
 struct i7core_pvt *pvt = mci->pvt_info;
 u32 pci_lock;


 pci_read_config_dword(pvt->pci_noncore, MC_CFG_CONTROL, &pci_lock);
 pci_lock &= ~0x3;
 pci_write_config_dword(pvt->pci_noncore, MC_CFG_CONTROL,
          pci_lock | MC_CFG_UNLOCK);

 mci->set_sdram_scrub_rate = set_sdram_scrub_rate;
 mci->get_sdram_scrub_rate = get_sdram_scrub_rate;
}
