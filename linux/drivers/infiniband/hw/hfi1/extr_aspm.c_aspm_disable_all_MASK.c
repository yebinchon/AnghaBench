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
typedef  scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; int /*<<< orphan*/  aspm_disabled_cnt; } ;
struct hfi1_ctxtdata {int aspm_intr_enable; int /*<<< orphan*/  aspm_lock; int /*<<< orphan*/  aspm_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hfi1_ctxtdata* FUNC3 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct hfi1_devdata *dd)
{
	struct hfi1_ctxtdata *rcd;
	unsigned long flags;
	u16 i;

	for (i = 0; i < dd->first_dyn_alloc_ctxt; i++) {
		rcd = FUNC3(dd, i);
		if (rcd) {
			FUNC2(&rcd->aspm_timer);
			FUNC5(&rcd->aspm_lock, flags);
			rcd->aspm_intr_enable = false;
			FUNC6(&rcd->aspm_lock, flags);
			FUNC4(rcd);
		}
	}

	FUNC0(dd);
	FUNC1(&dd->aspm_disabled_cnt, 0);
}