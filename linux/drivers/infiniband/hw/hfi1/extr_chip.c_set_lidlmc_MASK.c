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
typedef  int u64 ;
typedef  int u32 ;
struct hfi1_pportdata {unsigned int lmc; scalar_t__ lid; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCC_CFG_PORT_CONFIG1 ; 
 int DCC_CFG_PORT_CONFIG1_DLID_MASK_MASK ; 
 int DCC_CFG_PORT_CONFIG1_DLID_MASK_SHIFT ; 
 int DCC_CFG_PORT_CONFIG1_DLID_MASK_SMASK ; 
 int DCC_CFG_PORT_CONFIG1_TARGET_DLID_MASK ; 
 int DCC_CFG_PORT_CONFIG1_TARGET_DLID_SHIFT ; 
 int DCC_CFG_PORT_CONFIG1_TARGET_DLID_SMASK ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  LINKVERB ; 
 int /*<<< orphan*/  SEND_CTXT_CHECK_SLID ; 
 int SEND_CTXT_CHECK_SLID_MASK_MASK ; 
 int SEND_CTXT_CHECK_SLID_MASK_SHIFT ; 
 int SEND_CTXT_CHECK_SLID_VALUE_MASK ; 
 int SEND_CTXT_CHECK_SLID_VALUE_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct hfi1_pportdata *ppd)
{
	int i;
	u64 sreg = 0;
	struct hfi1_devdata *dd = ppd->dd;
	u32 mask = ~((1U << ppd->lmc) - 1);
	u64 c1 = FUNC3(ppd->dd, DCC_CFG_PORT_CONFIG1);
	u32 lid;

	/*
	 * Program 0 in CSR if port lid is extended. This prevents
	 * 9B packets being sent out for large lids.
	 */
	lid = (ppd->lid >= FUNC0(IB_MULTICAST_LID_BASE)) ? 0 : ppd->lid;
	c1 &= ~(DCC_CFG_PORT_CONFIG1_TARGET_DLID_SMASK
		| DCC_CFG_PORT_CONFIG1_DLID_MASK_SMASK);
	c1 |= ((lid & DCC_CFG_PORT_CONFIG1_TARGET_DLID_MASK)
			<< DCC_CFG_PORT_CONFIG1_TARGET_DLID_SHIFT) |
	      ((mask & DCC_CFG_PORT_CONFIG1_DLID_MASK_MASK)
			<< DCC_CFG_PORT_CONFIG1_DLID_MASK_SHIFT);
	FUNC5(ppd->dd, DCC_CFG_PORT_CONFIG1, c1);

	/*
	 * Iterate over all the send contexts and set their SLID check
	 */
	sreg = ((mask & SEND_CTXT_CHECK_SLID_MASK_MASK) <<
			SEND_CTXT_CHECK_SLID_MASK_SHIFT) |
	       (((lid & mask) & SEND_CTXT_CHECK_SLID_VALUE_MASK) <<
			SEND_CTXT_CHECK_SLID_VALUE_SHIFT);

	for (i = 0; i < FUNC1(dd); i++) {
		FUNC2(LINKVERB, "SendContext[%d].SLID_CHECK = 0x%x",
			  i, (u32)sreg);
		FUNC6(dd, i, SEND_CTXT_CHECK_SLID, sreg);
	}

	/* Now we have to do the same thing for the sdma engines */
	FUNC4(dd, mask, lid);
}