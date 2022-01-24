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
struct hfi1_pportdata {int dummy; } ;
struct hfi1_devdata {scalar_t__ hfi1_id; struct hfi1_pportdata* pport; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_QSFP1_CLEAR ; 
 int /*<<< orphan*/  ASIC_QSFP1_INVERT ; 
 int /*<<< orphan*/  ASIC_QSFP1_MASK ; 
 int /*<<< orphan*/  ASIC_QSFP2_CLEAR ; 
 int /*<<< orphan*/  ASIC_QSFP2_INVERT ; 
 int /*<<< orphan*/  ASIC_QSFP2_MASK ; 
 int /*<<< orphan*/  QSFP1_INT ; 
 int /*<<< orphan*/  QSFP2_INT ; 
 int QSFP_HFI0_INT_N ; 
 int QSFP_HFI0_MODPRST_N ; 
 scalar_t__ FUNC0 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hfi1_devdata *dd)
{
	struct hfi1_pportdata *ppd = dd->pport;
	u64 qsfp_mask;

	qsfp_mask = (u64)(QSFP_HFI0_INT_N | QSFP_HFI0_MODPRST_N);
	/* Clear current status to avoid spurious interrupts */
	FUNC3(dd, dd->hfi1_id ? ASIC_QSFP2_CLEAR : ASIC_QSFP1_CLEAR,
		  qsfp_mask);
	FUNC3(dd, dd->hfi1_id ? ASIC_QSFP2_MASK : ASIC_QSFP1_MASK,
		  qsfp_mask);

	FUNC2(ppd, 0);

	/* Handle active low nature of INT_N and MODPRST_N pins */
	if (FUNC0(ppd))
		qsfp_mask &= ~(u64)QSFP_HFI0_MODPRST_N;
	FUNC3(dd,
		  dd->hfi1_id ? ASIC_QSFP2_INVERT : ASIC_QSFP1_INVERT,
		  qsfp_mask);

	/* Enable the appropriate QSFP IRQ source */
	if (!dd->hfi1_id)
		FUNC1(dd, QSFP1_INT, QSFP1_INT, true);
	else
		FUNC1(dd, QSFP2_INT, QSFP2_INT, true);
}