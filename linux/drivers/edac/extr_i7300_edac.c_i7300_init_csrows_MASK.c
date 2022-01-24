#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mem_ctl_info {int /*<<< orphan*/  n_layers; int /*<<< orphan*/  dimms; int /*<<< orphan*/  layers; struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {struct i7300_dimm_info** dimm_info; int /*<<< orphan*/ ** mtr; int /*<<< orphan*/ * pci_dev_2x_0_fbd_branch; int /*<<< orphan*/ * ambpresent; int /*<<< orphan*/  mc_settings_a; } ;
struct i7300_dimm_info {int dummy; } ;
struct dimm_info {int dummy; } ;

/* Variables and functions */
 int AMBPRESENT_0 ; 
 int AMBPRESENT_1 ; 
 struct dimm_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_BRANCHES ; 
 int MAX_CH_PER_BRANCH ; 
 int MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct i7300_pvt*,int,int,int,struct i7300_dimm_info*,struct dimm_info*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int* mtr_regs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct mem_ctl_info *mci)
{
	struct i7300_pvt *pvt;
	struct i7300_dimm_info *dinfo;
	int rc = -ENODEV;
	int mtr;
	int ch, branch, slot, channel, max_channel, max_branch;
	struct dimm_info *dimm;

	pvt = mci->pvt_info;

	FUNC4(2, "Memory Technology Registers:\n");

	if (FUNC1(pvt->mc_settings_a)) {
		max_branch = 1;
		max_channel = 1;
	} else {
		max_branch = MAX_BRANCHES;
		max_channel = MAX_CH_PER_BRANCH;
	}

	/* Get the AMB present registers for the four channels */
	for (branch = 0; branch < max_branch; branch++) {
		/* Read and dump branch 0's MTRs */
		channel = FUNC6(0, branch);
		FUNC5(pvt->pci_dev_2x_0_fbd_branch[branch],
				     AMBPRESENT_0,
				&pvt->ambpresent[channel]);
		FUNC4(2, "\t\tAMB-present CH%d = 0x%x:\n",
			 channel, pvt->ambpresent[channel]);

		if (max_channel == 1)
			continue;

		channel = FUNC6(1, branch);
		FUNC5(pvt->pci_dev_2x_0_fbd_branch[branch],
				     AMBPRESENT_1,
				&pvt->ambpresent[channel]);
		FUNC4(2, "\t\tAMB-present CH%d = 0x%x:\n",
			 channel, pvt->ambpresent[channel]);
	}

	/* Get the set of MTR[0-7] regs by each branch */
	for (slot = 0; slot < MAX_SLOTS; slot++) {
		int where = mtr_regs[slot];
		for (branch = 0; branch < max_branch; branch++) {
			FUNC5(pvt->pci_dev_2x_0_fbd_branch[branch],
					where,
					&pvt->mtr[slot][branch]);
			for (ch = 0; ch < max_channel; ch++) {
				int channel = FUNC6(ch, branch);

				dimm = FUNC0(mci->layers, mci->dimms,
					       mci->n_layers, branch, ch, slot);

				dinfo = &pvt->dimm_info[slot][channel];

				mtr = FUNC3(pvt, slot, ch, branch,
						 dinfo, dimm);

				/* if no DIMMS on this row, continue */
				if (!FUNC2(mtr))
					continue;

				rc = 0;

			}
		}
	}

	return rc;
}