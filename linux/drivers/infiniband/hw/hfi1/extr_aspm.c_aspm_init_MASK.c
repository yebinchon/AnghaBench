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
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; int aspm_enabled; int /*<<< orphan*/  aspm_supported; int /*<<< orphan*/  aspm_lock; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*) ; 
 struct hfi1_ctxtdata* FUNC5 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct hfi1_devdata *dd)
{
	struct hfi1_ctxtdata *rcd;
	u16 i;

	FUNC7(&dd->aspm_lock);
	dd->aspm_supported = FUNC3(dd);

	for (i = 0; i < dd->first_dyn_alloc_ctxt; i++) {
		rcd = FUNC5(dd, i);
		if (rcd)
			FUNC0(rcd);
		FUNC6(rcd);
	}

	/* Start with ASPM disabled */
	FUNC4(dd);
	dd->aspm_enabled = false;
	FUNC2(dd);

	/* Now turn on ASPM if configured */
	FUNC1(dd);
}