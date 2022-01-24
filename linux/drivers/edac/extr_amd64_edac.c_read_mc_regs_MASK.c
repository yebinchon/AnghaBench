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
typedef  int u8 ;
typedef  int u64 ;
struct amd64_pvt {int top_mem; int top_mem2; size_t dram_type; int /*<<< orphan*/  dchr1; int /*<<< orphan*/  dclr1; int /*<<< orphan*/  dchr0; int /*<<< orphan*/  dclr0; int /*<<< orphan*/  online_spare; int /*<<< orphan*/  F3; int /*<<< orphan*/  dbam0; int /*<<< orphan*/  dhar; int /*<<< orphan*/  F1; int /*<<< orphan*/  nbcap; int /*<<< orphan*/  F0; scalar_t__ umc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DBAM0 ; 
 int /*<<< orphan*/  DCHR0 ; 
 int /*<<< orphan*/  DCLR0 ; 
 int /*<<< orphan*/  DF_DHAR ; 
 int /*<<< orphan*/  DHAR ; 
 unsigned int DRAM_RANGES ; 
 int /*<<< orphan*/  F10_ONLINE_SPARE ; 
 int /*<<< orphan*/  MSR_K8_SYSCFG ; 
 int /*<<< orphan*/  MSR_K8_TOP_MEM1 ; 
 int /*<<< orphan*/  MSR_K8_TOP_MEM2 ; 
 int /*<<< orphan*/  NBCAP ; 
 int /*<<< orphan*/  FUNC1 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd64_pvt*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC5 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC6 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC7 (struct amd64_pvt*,unsigned int) ; 
 scalar_t__ FUNC8 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct amd64_pvt*,unsigned int) ; 
 int FUNC10 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int* edac_mem_types ; 
 int /*<<< orphan*/  FUNC13 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC17 (struct amd64_pvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct amd64_pvt*) ; 

__attribute__((used)) static void FUNC19(struct amd64_pvt *pvt)
{
	unsigned int range;
	u64 msr_val;

	/*
	 * Retrieve TOP_MEM and TOP_MEM2; no masking off of reserved bits since
	 * those are Read-As-Zero.
	 */
	FUNC15(MSR_K8_TOP_MEM1, pvt->top_mem);
	FUNC12(0, "  TOP_MEM:  0x%016llx\n", pvt->top_mem);

	/* Check first whether TOP_MEM2 is enabled: */
	FUNC15(MSR_K8_SYSCFG, msr_val);
	if (msr_val & FUNC0(21)) {
		FUNC15(MSR_K8_TOP_MEM2, pvt->top_mem2);
		FUNC12(0, "  TOP_MEM2: 0x%016llx\n", pvt->top_mem2);
	} else {
		FUNC12(0, "  TOP_MEM2 disabled\n");
	}

	if (pvt->umc) {
		FUNC1(pvt);
		FUNC3(pvt->F0, DF_DHAR, &pvt->dhar);

		goto skip;
	}

	FUNC3(pvt->F3, NBCAP, &pvt->nbcap);

	FUNC18(pvt);

	for (range = 0; range < DRAM_RANGES; range++) {
		u8 rw;

		/* read settings for this DRAM range */
		FUNC17(pvt, range);

		rw = FUNC10(pvt, range);
		if (!rw)
			continue;

		FUNC12(1, "  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\n",
			 range,
			 FUNC13(pvt, range),
			 FUNC14(pvt, range));

		FUNC12(1, "   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\n",
			 FUNC8(pvt, range) ? "Enabled" : "Disabled",
			 (rw & 0x1) ? "R" : "-",
			 (rw & 0x2) ? "W" : "-",
			 FUNC9(pvt, range),
			 FUNC7(pvt, range));
	}

	FUNC3(pvt->F1, DHAR, &pvt->dhar);
	FUNC2(pvt, 0, DBAM0, &pvt->dbam0);

	FUNC3(pvt->F3, F10_ONLINE_SPARE, &pvt->online_spare);

	FUNC2(pvt, 0, DCLR0, &pvt->dclr0);
	FUNC2(pvt, 0, DCHR0, &pvt->dchr0);

	if (!FUNC4(pvt)) {
		FUNC2(pvt, 1, DCLR0, &pvt->dclr1);
		FUNC2(pvt, 1, DCHR0, &pvt->dchr1);
	}

skip:
	FUNC16(pvt);

	FUNC6(pvt);
	FUNC12(1, "  DIMM type: %s\n", edac_mem_types[pvt->dram_type]);

	FUNC5(pvt);

	FUNC11(pvt);
}