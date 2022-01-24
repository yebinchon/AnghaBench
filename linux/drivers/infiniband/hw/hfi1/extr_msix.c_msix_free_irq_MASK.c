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
typedef  size_t u8 ;
struct hfi1_msix_entry {int /*<<< orphan*/ * arg; } ;
struct TYPE_2__ {size_t max_requested; int /*<<< orphan*/  msix_lock; int /*<<< orphan*/  in_use_msix; struct hfi1_msix_entry* msix_entries; } ;
struct hfi1_devdata {TYPE_1__ msix_info; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct hfi1_msix_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct hfi1_devdata *dd, u8 msix_intr)
{
	struct hfi1_msix_entry *me;

	if (msix_intr >= dd->msix_info.max_requested)
		return;

	me = &dd->msix_info.msix_entries[msix_intr];

	if (!me->arg) /* => no irq, no affinity */
		return;

	FUNC1(dd, me);
	FUNC2(dd->pcidev, msix_intr, me->arg);

	me->arg = NULL;

	FUNC3(&dd->msix_info.msix_lock);
	FUNC0(msix_intr, dd->msix_info.in_use_msix);
	FUNC4(&dd->msix_info.msix_lock);
}