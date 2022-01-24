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
struct qib_devdata {int revision; int /*<<< orphan*/  intrchk_timer; int /*<<< orphan*/  eep_lock; int /*<<< orphan*/  eep_st_lock; int /*<<< orphan*/  qib_diag_trans_lock; int /*<<< orphan*/  uctxt_lock; int /*<<< orphan*/  sendctrl_lock; int /*<<< orphan*/  pioavail_lock; int /*<<< orphan*/  boardversion; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int ENOSYS ; 
 int QIB_CHIP_SWVERSION ; 
 int QLOGIC_IB_R_EMULATOR_MASK ; 
 int QLOGIC_IB_R_SOFTWARE_MASK ; 
 int QLOGIC_IB_R_SOFTWARE_SHIFT ; 
 int FUNC0 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*) ; 
 scalar_t__ qib_mini_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verify_interrupt ; 

__attribute__((used)) static int FUNC8(struct qib_devdata *dd)
{
	int ret = 0;

	if (((dd->revision >> QLOGIC_IB_R_SOFTWARE_SHIFT) &
	     QLOGIC_IB_R_SOFTWARE_MASK) != QIB_CHIP_SWVERSION) {
		FUNC3(dd,
			"Driver only handles version %d, chip swversion is %d (%llx), failing\n",
			QIB_CHIP_SWVERSION,
			(int)(dd->revision >>
				QLOGIC_IB_R_SOFTWARE_SHIFT) &
				QLOGIC_IB_R_SOFTWARE_MASK,
			(unsigned long long) dd->revision);
		ret = -ENOSYS;
		goto done;
	}

	if (dd->revision & QLOGIC_IB_R_EMULATOR_MASK)
		FUNC4(dd->pcidev, "%s", dd->boardversion);

	FUNC6(&dd->pioavail_lock);
	FUNC6(&dd->sendctrl_lock);
	FUNC6(&dd->uctxt_lock);
	FUNC6(&dd->qib_diag_trans_lock);
	FUNC6(&dd->eep_st_lock);
	FUNC2(&dd->eep_lock);

	if (qib_mini_init)
		goto done;

	ret = FUNC0(dd);
	FUNC1(dd);

	FUNC5(dd);

	/* setup time (don't start yet) to verify we got interrupt */
	FUNC7(&dd->intrchk_timer, verify_interrupt, 0);
done:
	return ret;
}