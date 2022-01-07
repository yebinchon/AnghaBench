
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int tolm; int mc_settings; int mc_settings_a; int* mir; int pci_dev_16_1_fsb_addr_map; scalar_t__ ambase; int pci_dev_16_0_fsb_ctlr; } ;


 int AMBASE ;
 scalar_t__ IS_ECC_ENABLED (int) ;
 scalar_t__ IS_MIRRORED (int) ;
 scalar_t__ IS_RETRY_ENABLED (int) ;
 scalar_t__ IS_SINGLE_MODE (int) ;
 int MAX_MIR ;
 int MC_SETTINGS ;
 int MC_SETTINGS_A ;
 int MIR0 ;
 int MIR1 ;
 int MIR2 ;
 int TOLM ;
 int decode_mir (int,int*) ;
 int edac_dbg (int,char*,...) ;
 int i7300_init_csrows (struct mem_ctl_info*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_read_config_word (int ,int ,int*) ;
 int print_dimm_size (struct i7300_pvt*) ;

__attribute__((used)) static int i7300_get_mc_regs(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 u32 actual_tolm;
 int i, rc;

 pvt = mci->pvt_info;

 pci_read_config_dword(pvt->pci_dev_16_0_fsb_ctlr, AMBASE,
   (u32 *) &pvt->ambase);

 edac_dbg(2, "AMBASE= 0x%lx\n", (long unsigned int)pvt->ambase);


 pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map, TOLM, &pvt->tolm);
 pvt->tolm >>= 12;
 edac_dbg(2, "TOLM (number of 256M regions) =%u (0x%x)\n",
   pvt->tolm, pvt->tolm);

 actual_tolm = (u32) ((1000l * pvt->tolm) >> (30 - 28));
 edac_dbg(2, "Actual TOLM byte addr=%u.%03u GB (0x%x)\n",
   actual_tolm/1000, actual_tolm % 1000, pvt->tolm << 28);


 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map, MC_SETTINGS,
        &pvt->mc_settings);
 pci_read_config_dword(pvt->pci_dev_16_1_fsb_addr_map, MC_SETTINGS_A,
        &pvt->mc_settings_a);

 if (IS_SINGLE_MODE(pvt->mc_settings_a))
  edac_dbg(0, "Memory controller operating on single mode\n");
 else
  edac_dbg(0, "Memory controller operating on %smirrored mode\n",
    IS_MIRRORED(pvt->mc_settings) ? "" : "non-");

 edac_dbg(0, "Error detection is %s\n",
   IS_ECC_ENABLED(pvt->mc_settings) ? "enabled" : "disabled");
 edac_dbg(0, "Retry is %s\n",
   IS_RETRY_ENABLED(pvt->mc_settings) ? "enabled" : "disabled");


 pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map, MIR0,
        &pvt->mir[0]);
 pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map, MIR1,
        &pvt->mir[1]);
 pci_read_config_word(pvt->pci_dev_16_1_fsb_addr_map, MIR2,
        &pvt->mir[2]);


 for (i = 0; i < MAX_MIR; i++)
  decode_mir(i, pvt->mir);

 rc = i7300_init_csrows(mci);
 if (rc < 0)
  return rc;



 print_dimm_size(pvt);

 return 0;
}
