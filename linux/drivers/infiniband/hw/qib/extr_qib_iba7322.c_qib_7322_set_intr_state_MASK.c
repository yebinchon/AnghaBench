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
typedef  long long u64 ;
typedef  scalar_t__ u32 ;
struct qib_devdata {int flags; TYPE_1__* cspec; } ;
struct TYPE_2__ {unsigned long long int_enable_mask; scalar_t__ num_msix_entries; } ;

/* Variables and functions */
 int QIB_BADINTR ; 
 int /*<<< orphan*/  kr_intclear ; 
 int /*<<< orphan*/  kr_intgranted ; 
 int /*<<< orphan*/  kr_intmask ; 
 long long FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC2(struct qib_devdata *dd, u32 enable)
{
	if (enable) {
		if (dd->flags & QIB_BADINTR)
			return;
		FUNC1(dd, kr_intmask, dd->cspec->int_enable_mask);
		/* cause any pending enabled interrupts to be re-delivered */
		FUNC1(dd, kr_intclear, 0ULL);
		if (dd->cspec->num_msix_entries) {
			/* and same for MSIx */
			u64 val = FUNC0(dd, kr_intgranted);

			if (val)
				FUNC1(dd, kr_intgranted, val);
		}
	} else
		FUNC1(dd, kr_intmask, 0ULL);
}