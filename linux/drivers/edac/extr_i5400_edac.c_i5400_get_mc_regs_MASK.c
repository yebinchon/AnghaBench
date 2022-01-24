#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  ambase_top; int /*<<< orphan*/  ambase_bottom; } ;
struct i5400_pvt {int maxdimmperch; int maxch; int tolm; int mir0; int mir1; int* b0_mtr; int* b1_mtr; int b0_ambpresent0; int b0_ambpresent1; int b1_ambpresent0; int b1_ambpresent1; int /*<<< orphan*/  branch_1; int /*<<< orphan*/  branch_0; int /*<<< orphan*/  branchmap_werrors; scalar_t__ ambase; TYPE_1__ u; int /*<<< orphan*/  system_address; } ;

/* Variables and functions */
 scalar_t__ AMBASE ; 
 int AMBPRESENT_0 ; 
 int AMBPRESENT_1 ; 
 int CHANNELS_PER_BRANCH ; 
 int DIMMS_PER_CHANNEL ; 
 int MIR0 ; 
 int MIR1 ; 
 int MTR0 ; 
 int TOLM ; 
 int /*<<< orphan*/  FUNC0 (struct i5400_pvt*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC5(struct mem_ctl_info *mci)
{
	struct i5400_pvt *pvt;
	u32 actual_tolm;
	u16 limit;
	int slot_row;
	int maxch;
	int maxdimmperch;
	int way0, way1;

	pvt = mci->pvt_info;

	FUNC3(pvt->system_address, AMBASE,
			&pvt->u.ambase_bottom);
	FUNC3(pvt->system_address, AMBASE + sizeof(u32),
			&pvt->u.ambase_top);

	maxdimmperch = pvt->maxdimmperch;
	maxch = pvt->maxch;

	FUNC2(2, "AMBASE= 0x%lx  MAXCH= %d  MAX-DIMM-Per-CH= %d\n",
		 (long unsigned int)pvt->ambase, pvt->maxch, pvt->maxdimmperch);

	/* Get the Branch Map regs */
	FUNC4(pvt->branchmap_werrors, TOLM, &pvt->tolm);
	pvt->tolm >>= 12;
	FUNC2(2, "\nTOLM (number of 256M regions) =%u (0x%x)\n",
		 pvt->tolm, pvt->tolm);

	actual_tolm = (u32) ((1000l * pvt->tolm) >> (30 - 28));
	FUNC2(2, "Actual TOLM byte addr=%u.%03u GB (0x%x)\n",
		 actual_tolm/1000, actual_tolm % 1000, pvt->tolm << 28);

	FUNC4(pvt->branchmap_werrors, MIR0, &pvt->mir0);
	FUNC4(pvt->branchmap_werrors, MIR1, &pvt->mir1);

	/* Get the MIR[0-1] regs */
	limit = (pvt->mir0 >> 4) & 0x0fff;
	way0 = pvt->mir0 & 0x1;
	way1 = pvt->mir0 & 0x2;
	FUNC2(2, "MIR0: limit= 0x%x  WAY1= %u  WAY0= %x\n",
		 limit, way1, way0);
	limit = (pvt->mir1 >> 4) & 0xfff;
	way0 = pvt->mir1 & 0x1;
	way1 = pvt->mir1 & 0x2;
	FUNC2(2, "MIR1: limit= 0x%x  WAY1= %u  WAY0= %x\n",
		 limit, way1, way0);

	/* Get the set of MTR[0-3] regs by each branch */
	for (slot_row = 0; slot_row < DIMMS_PER_CHANNEL; slot_row++) {
		int where = MTR0 + (slot_row * sizeof(u16));

		/* Branch 0 set of MTR registers */
		FUNC4(pvt->branch_0, where,
				&pvt->b0_mtr[slot_row]);

		FUNC2(2, "MTR%d where=0x%x B0 value=0x%x\n",
			 slot_row, where, pvt->b0_mtr[slot_row]);

		if (pvt->maxch < CHANNELS_PER_BRANCH) {
			pvt->b1_mtr[slot_row] = 0;
			continue;
		}

		/* Branch 1 set of MTR registers */
		FUNC4(pvt->branch_1, where,
				&pvt->b1_mtr[slot_row]);
		FUNC2(2, "MTR%d where=0x%x B1 value=0x%x\n",
			 slot_row, where, pvt->b1_mtr[slot_row]);
	}

	/* Read and dump branch 0's MTRs */
	FUNC2(2, "Memory Technology Registers:\n");
	FUNC2(2, "   Branch 0:\n");
	for (slot_row = 0; slot_row < DIMMS_PER_CHANNEL; slot_row++)
		FUNC1(slot_row, pvt->b0_mtr[slot_row]);

	FUNC4(pvt->branch_0, AMBPRESENT_0,
			&pvt->b0_ambpresent0);
	FUNC2(2, "\t\tAMB-Branch 0-present0 0x%x:\n", pvt->b0_ambpresent0);
	FUNC4(pvt->branch_0, AMBPRESENT_1,
			&pvt->b0_ambpresent1);
	FUNC2(2, "\t\tAMB-Branch 0-present1 0x%x:\n", pvt->b0_ambpresent1);

	/* Only if we have 2 branchs (4 channels) */
	if (pvt->maxch < CHANNELS_PER_BRANCH) {
		pvt->b1_ambpresent0 = 0;
		pvt->b1_ambpresent1 = 0;
	} else {
		/* Read and dump  branch 1's MTRs */
		FUNC2(2, "   Branch 1:\n");
		for (slot_row = 0; slot_row < DIMMS_PER_CHANNEL; slot_row++)
			FUNC1(slot_row, pvt->b1_mtr[slot_row]);

		FUNC4(pvt->branch_1, AMBPRESENT_0,
				&pvt->b1_ambpresent0);
		FUNC2(2, "\t\tAMB-Branch 1-present0 0x%x:\n",
			 pvt->b1_ambpresent0);
		FUNC4(pvt->branch_1, AMBPRESENT_1,
				&pvt->b1_ambpresent1);
		FUNC2(2, "\t\tAMB-Branch 1-present1 0x%x:\n",
			 pvt->b1_ambpresent1);
	}

	/* Go and determine the size of each DIMM and place in an
	 * orderly matrix */
	FUNC0(pvt);
}