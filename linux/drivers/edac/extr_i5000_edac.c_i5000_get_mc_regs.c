
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mem_ctl_info {struct i5000_pvt* pvt_info; } ;
struct TYPE_2__ {int ambase_top; int ambase_bottom; } ;
struct i5000_pvt {scalar_t__ maxch; int tolm; int mir0; int mir1; int mir2; int* b0_mtr; int* b1_mtr; int b0_ambpresent0; int b0_ambpresent1; int b1_ambpresent0; int b1_ambpresent1; int branch_1; int branch_0; int branchmap_werrors; int maxdimmperch; scalar_t__ ambase; TYPE_1__ u; int system_address; } ;


 scalar_t__ AMBASE ;
 int AMB_PRESENT_0 ;
 int AMB_PRESENT_1 ;
 scalar_t__ CHANNELS_PER_BRANCH ;
 int MIR0 ;
 int MIR1 ;
 int MIR2 ;
 int MTR0 ;
 int NUM_MTRS ;
 int TOLM ;
 int calculate_dimm_size (struct i5000_pvt*) ;
 int decode_mtr (int,int) ;
 int edac_dbg (int,char*,...) ;
 int pci_read_config_dword (int ,scalar_t__,int *) ;
 int pci_read_config_word (int ,int,int*) ;

__attribute__((used)) static void i5000_get_mc_regs(struct mem_ctl_info *mci)
{
 struct i5000_pvt *pvt;
 u32 actual_tolm;
 u16 limit;
 int slot_row;
 int way0, way1;

 pvt = mci->pvt_info;

 pci_read_config_dword(pvt->system_address, AMBASE,
   &pvt->u.ambase_bottom);
 pci_read_config_dword(pvt->system_address, AMBASE + sizeof(u32),
   &pvt->u.ambase_top);

 edac_dbg(2, "AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\n",
   (long unsigned int)pvt->ambase, pvt->maxch, pvt->maxdimmperch);


 pci_read_config_word(pvt->branchmap_werrors, TOLM, &pvt->tolm);
 pvt->tolm >>= 12;
 edac_dbg(2, "TOLM (number of 256M regions) =%u (0x%x)\n",
   pvt->tolm, pvt->tolm);

 actual_tolm = pvt->tolm << 28;
 edac_dbg(2, "Actual TOLM byte addr=%u (0x%x)\n",
   actual_tolm, actual_tolm);

 pci_read_config_word(pvt->branchmap_werrors, MIR0, &pvt->mir0);
 pci_read_config_word(pvt->branchmap_werrors, MIR1, &pvt->mir1);
 pci_read_config_word(pvt->branchmap_werrors, MIR2, &pvt->mir2);


 limit = (pvt->mir0 >> 4) & 0x0FFF;
 way0 = pvt->mir0 & 0x1;
 way1 = pvt->mir0 & 0x2;
 edac_dbg(2, "MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\n",
   limit, way1, way0);
 limit = (pvt->mir1 >> 4) & 0x0FFF;
 way0 = pvt->mir1 & 0x1;
 way1 = pvt->mir1 & 0x2;
 edac_dbg(2, "MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\n",
   limit, way1, way0);
 limit = (pvt->mir2 >> 4) & 0x0FFF;
 way0 = pvt->mir2 & 0x1;
 way1 = pvt->mir2 & 0x2;
 edac_dbg(2, "MIR2: limit= 0x%x  WAY1= %u  WAY0= %x\n",
   limit, way1, way0);


 for (slot_row = 0; slot_row < NUM_MTRS; slot_row++) {
  int where = MTR0 + (slot_row * sizeof(u32));

  pci_read_config_word(pvt->branch_0, where,
    &pvt->b0_mtr[slot_row]);

  edac_dbg(2, "MTR%d where=0x%x B0 value=0x%x\n",
    slot_row, where, pvt->b0_mtr[slot_row]);

  if (pvt->maxch >= CHANNELS_PER_BRANCH) {
   pci_read_config_word(pvt->branch_1, where,
     &pvt->b1_mtr[slot_row]);
   edac_dbg(2, "MTR%d where=0x%x B1 value=0x%x\n",
     slot_row, where, pvt->b1_mtr[slot_row]);
  } else {
   pvt->b1_mtr[slot_row] = 0;
  }
 }


 edac_dbg(2, "Memory Technology Registers:\n");
 edac_dbg(2, "   Branch 0:\n");
 for (slot_row = 0; slot_row < NUM_MTRS; slot_row++) {
  decode_mtr(slot_row, pvt->b0_mtr[slot_row]);
 }
 pci_read_config_word(pvt->branch_0, AMB_PRESENT_0,
   &pvt->b0_ambpresent0);
 edac_dbg(2, "\t\tAMB-Branch 0-present0 0x%x:\n", pvt->b0_ambpresent0);
 pci_read_config_word(pvt->branch_0, AMB_PRESENT_1,
   &pvt->b0_ambpresent1);
 edac_dbg(2, "\t\tAMB-Branch 0-present1 0x%x:\n", pvt->b0_ambpresent1);


 if (pvt->maxch < CHANNELS_PER_BRANCH) {
  pvt->b1_ambpresent0 = 0;
  pvt->b1_ambpresent1 = 0;
 } else {

  edac_dbg(2, "   Branch 1:\n");
  for (slot_row = 0; slot_row < NUM_MTRS; slot_row++) {
   decode_mtr(slot_row, pvt->b1_mtr[slot_row]);
  }
  pci_read_config_word(pvt->branch_1, AMB_PRESENT_0,
    &pvt->b1_ambpresent0);
  edac_dbg(2, "\t\tAMB-Branch 1-present0 0x%x:\n",
    pvt->b1_ambpresent0);
  pci_read_config_word(pvt->branch_1, AMB_PRESENT_1,
    &pvt->b1_ambpresent1);
  edac_dbg(2, "\t\tAMB-Branch 1-present1 0x%x:\n",
    pvt->b1_ambpresent1);
 }



 calculate_dimm_size(pvt);
}
