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
typedef  int /*<<< orphan*/  u64 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_QSFP1_OUT ; 
 int /*<<< orphan*/  ASIC_QSFP2_OUT ; 
 scalar_t__ QSFP_HFI0_RESET_N ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int) ; 
 int FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;
	u64 mask, qsfp_mask;

	/* Disable INT_N from triggering QSFP interrupts */
	FUNC1(ppd, 0);

	/* Reset the QSFP */
	mask = (u64)QSFP_HFI0_RESET_N;

	qsfp_mask = FUNC0(dd,
			     dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT);
	qsfp_mask &= ~mask;
	FUNC5(dd,
		  dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT, qsfp_mask);

	FUNC3(10);

	qsfp_mask |= mask;
	FUNC5(dd,
		  dd->hfi1_id ? ASIC_QSFP2_OUT : ASIC_QSFP1_OUT, qsfp_mask);

	FUNC4(ppd);

	/*
	 * Allow INT_N to trigger the QSFP interrupt to watch
	 * for alarms and warnings
	 */
	FUNC1(ppd, 1);

	/*
	 * After the reset, AOC transmitters are enabled by default. They need
	 * to be turned off to complete the QSFP setup before they can be
	 * enabled again.
	 */
	return FUNC2(ppd, 0);
}