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
struct amd64_pvt {int fam; char* dct_sel_lo; char* dct_sel_hi; int /*<<< orphan*/  F2; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCT_SEL_HI ; 
 int /*<<< orphan*/  DCT_SEL_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC1 (struct amd64_pvt*) ; 
 scalar_t__ FUNC2 (struct amd64_pvt*) ; 
 scalar_t__ FUNC3 (struct amd64_pvt*) ; 
 scalar_t__ FUNC4 (struct amd64_pvt*) ; 
 scalar_t__ FUNC5 (struct amd64_pvt*) ; 
 char* FUNC6 (struct amd64_pvt*) ; 
 char* FUNC7 (struct amd64_pvt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void FUNC9(struct amd64_pvt *pvt)
{

	if (pvt->fam == 0xf)
		return;

	if (!FUNC0(pvt->F2, DCT_SEL_LO, &pvt->dct_sel_lo)) {
		FUNC8(0, "F2x110 (DCTSelLow): 0x%08x, High range addrs at: 0x%x\n",
			 pvt->dct_sel_lo, FUNC6(pvt));

		FUNC8(0, "  DCTs operate in %s mode\n",
			 (FUNC2(pvt) ? "ganged" : "unganged"));

		if (!FUNC2(pvt))
			FUNC8(0, "  Address range split per DCT: %s\n",
				 (FUNC3(pvt) ? "yes" : "no"));

		FUNC8(0, "  data interleave for ECC: %s, DRAM cleared since last warm reset: %s\n",
			 (FUNC1(pvt) ? "enabled" : "disabled"),
			 (FUNC5(pvt) ? "yes" : "no"));

		FUNC8(0, "  channel interleave: %s, "
			 "interleave bits selector: 0x%x\n",
			 (FUNC4(pvt) ? "enabled" : "disabled"),
			 FUNC7(pvt));
	}

	FUNC0(pvt->F2, DCT_SEL_HI, &pvt->dct_sel_hi);
}