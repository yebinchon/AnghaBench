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
struct qib_devdata {unsigned long long control; TYPE_1__* cspec; int /*<<< orphan*/  pport; } ;
struct TYPE_2__ {unsigned long long errormask; } ;

/* Variables and functions */
 unsigned long long E_SPKT_ERRS_IGNORE ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_errclear ; 
 int /*<<< orphan*/  kr_errmask ; 
 int /*<<< orphan*/  kr_hwerrclear ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC5(struct qib_devdata *dd)
{
	/* disable error interrupts, to avoid confusion */
	FUNC4(dd, kr_errmask, 0ULL);

	/* also disable interrupts; errormask is sometimes overwritten */
	FUNC0(dd, 0);

	FUNC1(dd->pport);

	/* clear the freeze, and be sure chip saw it */
	FUNC4(dd, kr_control, dd->control);
	FUNC3(dd, kr_scratch);

	/* force in-memory update now we are out of freeze */
	FUNC2(dd);

	/*
	 * force new interrupt if any hwerr, error or interrupt bits are
	 * still set, and clear "safe" send packet errors related to freeze
	 * and cancelling sends.  Re-enable error interrupts before possible
	 * force of re-interrupt on pending interrupts.
	 */
	FUNC4(dd, kr_hwerrclear, 0ULL);
	FUNC4(dd, kr_errclear, E_SPKT_ERRS_IGNORE);
	FUNC4(dd, kr_errmask, dd->cspec->errormask);
	FUNC0(dd, 1);
}