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
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {scalar_t__ icode; int /*<<< orphan*/ * send_egress_err_status_cnt; int /*<<< orphan*/  pport; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ALL_TXE_EGRESS_FREEZE_ERR ; 
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ; 
 int NUM_SEND_EGRESS_ERR_STATUS_COUNTERS ; 
 int SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct hfi1_devdata*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
	u64 reg_copy = reg, handled = 0;
	char buf[96];
	int i = 0;

	if (reg & ALL_TXE_EGRESS_FREEZE_ERR)
		FUNC11(dd->pport, 0);
	else if (FUNC9(dd) &&
		 (reg & SEND_EGRESS_ERR_STATUS_TX_CREDIT_RETURN_VL_ERR_SMASK) &&
		 (dd->icode != ICODE_FUNCTIONAL_SIMULATOR))
		FUNC11(dd->pport, 0);

	while (reg_copy) {
		int posn = FUNC6(reg_copy);
		/* fls64() returns a 1-based offset, we want it zero based */
		int shift = posn - 1;
		u64 mask = 1ULL << shift;

		if (FUNC10(shift)) {
			FUNC0(dd);
			handled |= mask;
		} else if (FUNC3(shift)) {
			int vl = FUNC5(dd, FUNC2(shift));

			FUNC7(dd, vl);
			handled |= mask;
		}
		reg_copy &= ~mask;
	}

	reg &= ~handled;

	if (reg)
		FUNC1(dd, "Egress Error: %s\n",
			    FUNC4(buf, sizeof(buf), reg));

	for (i = 0; i < NUM_SEND_EGRESS_ERR_STATUS_COUNTERS; i++) {
		if (reg & (1ull << i))
			FUNC8(&dd->send_egress_err_status_cnt[i]);
	}
}