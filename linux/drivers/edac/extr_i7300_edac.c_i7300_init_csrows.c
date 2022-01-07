
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int n_layers; int dimms; int layers; struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {struct i7300_dimm_info** dimm_info; int ** mtr; int * pci_dev_2x_0_fbd_branch; int * ambpresent; int mc_settings_a; } ;
struct i7300_dimm_info {int dummy; } ;
struct dimm_info {int dummy; } ;


 int AMBPRESENT_0 ;
 int AMBPRESENT_1 ;
 struct dimm_info* EDAC_DIMM_PTR (int ,int ,int ,int,int,int) ;
 int ENODEV ;
 scalar_t__ IS_SINGLE_MODE (int ) ;
 int MAX_BRANCHES ;
 int MAX_CH_PER_BRANCH ;
 int MAX_SLOTS ;
 int MTR_DIMMS_PRESENT (int) ;
 int decode_mtr (struct i7300_pvt*,int,int,int,struct i7300_dimm_info*,struct dimm_info*) ;
 int edac_dbg (int,char*,...) ;
 int* mtr_regs ;
 int pci_read_config_word (int ,int,int *) ;
 int to_channel (int,int) ;

__attribute__((used)) static int i7300_init_csrows(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 struct i7300_dimm_info *dinfo;
 int rc = -ENODEV;
 int mtr;
 int ch, branch, slot, channel, max_channel, max_branch;
 struct dimm_info *dimm;

 pvt = mci->pvt_info;

 edac_dbg(2, "Memory Technology Registers:\n");

 if (IS_SINGLE_MODE(pvt->mc_settings_a)) {
  max_branch = 1;
  max_channel = 1;
 } else {
  max_branch = MAX_BRANCHES;
  max_channel = MAX_CH_PER_BRANCH;
 }


 for (branch = 0; branch < max_branch; branch++) {

  channel = to_channel(0, branch);
  pci_read_config_word(pvt->pci_dev_2x_0_fbd_branch[branch],
         AMBPRESENT_0,
    &pvt->ambpresent[channel]);
  edac_dbg(2, "\t\tAMB-present CH%d = 0x%x:\n",
    channel, pvt->ambpresent[channel]);

  if (max_channel == 1)
   continue;

  channel = to_channel(1, branch);
  pci_read_config_word(pvt->pci_dev_2x_0_fbd_branch[branch],
         AMBPRESENT_1,
    &pvt->ambpresent[channel]);
  edac_dbg(2, "\t\tAMB-present CH%d = 0x%x:\n",
    channel, pvt->ambpresent[channel]);
 }


 for (slot = 0; slot < MAX_SLOTS; slot++) {
  int where = mtr_regs[slot];
  for (branch = 0; branch < max_branch; branch++) {
   pci_read_config_word(pvt->pci_dev_2x_0_fbd_branch[branch],
     where,
     &pvt->mtr[slot][branch]);
   for (ch = 0; ch < max_channel; ch++) {
    int channel = to_channel(ch, branch);

    dimm = EDAC_DIMM_PTR(mci->layers, mci->dimms,
            mci->n_layers, branch, ch, slot);

    dinfo = &pvt->dimm_info[slot][channel];

    mtr = decode_mtr(pvt, slot, ch, branch,
       dinfo, dimm);


    if (!MTR_DIMMS_PRESENT(mtr))
     continue;

    rc = 0;

   }
  }
 }

 return rc;
}
