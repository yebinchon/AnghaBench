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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {scalar_t__ icode; int /*<<< orphan*/  sw_cce_err_status_aggregate; int /*<<< orphan*/ * cce_err_status_cnt; int /*<<< orphan*/  pport; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned long long CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK ; 
 int /*<<< orphan*/  FREEZE_SELF ; 
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ; 
 int NUM_CCE_ERR_STATUS_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd, u32 unused, u64 reg)
{
	char buf[96];
	int i = 0;

	/*
	 * For most these errors, there is nothing that can be done except
	 * report or record it.
	 */
	FUNC1(dd, "CCE Error: %s\n",
		    FUNC0(buf, sizeof(buf), reg));

	if ((reg & CCE_ERR_STATUS_CCE_CLI2_ASYNC_FIFO_PARITY_ERR_SMASK) &&
	    FUNC3(dd) && (dd->icode != ICODE_FUNCTIONAL_SIMULATOR)) {
		/* this error requires a manual drop into SPC freeze mode */
		/* then a fix up */
		FUNC4(dd->pport, FREEZE_SELF);
	}

	for (i = 0; i < NUM_CCE_ERR_STATUS_COUNTERS; i++) {
		if (reg & (1ull << i)) {
			FUNC2(&dd->cce_err_status_cnt[i]);
			/* maintain a counter over all cce_err_status errors */
			FUNC2(&dd->sw_cce_err_status_aggregate);
		}
	}
}