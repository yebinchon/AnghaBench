#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct qib_pportdata {struct qib_devdata* dd; TYPE_1__* cpspec; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; } ;
struct qib_devdata {int control; } ;
struct TYPE_4__ {scalar_t__ function; } ;
struct TYPE_3__ {int /*<<< orphan*/  autoneg_work; int /*<<< orphan*/  autoneg_wait; scalar_t__ iblnkerrdelta; scalar_t__ iblnkerrsnap; scalar_t__ ibdeltainprog; scalar_t__ ibsymdelta; scalar_t__ ibsymsnap; TYPE_2__ chase_timer; scalar_t__ chase_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  CounterWrEnable ; 
 int /*<<< orphan*/  HwDiagCtrl ; 
 int /*<<< orphan*/  QIBL_IB_AUTONEG_INPROG ; 
 int QLOGIC_IB_C_FREEZEMODE ; 
 int QLOGIC_IB_C_LINKENABLE ; 
 int /*<<< orphan*/  QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ; 
 int QLOGIC_IB_XGXS_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cr_iblinkerrrecov ; 
 int /*<<< orphan*/  cr_ibsymbolerr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_hwdiagctrl ; 
 int /*<<< orphan*/  kr_xgxs_cfg ; 
 int FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct qib_pportdata *ppd)
{
	u64 val;
	struct qib_devdata *dd = ppd->dd;
	unsigned long flags;

	/* disable IBC */
	dd->control &= ~QLOGIC_IB_C_LINKENABLE;
	FUNC5(dd, kr_control,
		       dd->control | QLOGIC_IB_C_FREEZEMODE);

	ppd->cpspec->chase_end = 0;
	if (ppd->cpspec->chase_timer.function) /* if initted */
		FUNC2(&ppd->cpspec->chase_timer);

	if (ppd->cpspec->ibsymdelta || ppd->cpspec->iblnkerrdelta ||
	    ppd->cpspec->ibdeltainprog) {
		u64 diagc;

		/* enable counter writes */
		diagc = FUNC3(dd, kr_hwdiagctrl);
		FUNC5(dd, kr_hwdiagctrl,
			       diagc | FUNC0(HwDiagCtrl, CounterWrEnable));

		if (ppd->cpspec->ibsymdelta || ppd->cpspec->ibdeltainprog) {
			val = FUNC6(dd, cr_ibsymbolerr);
			if (ppd->cpspec->ibdeltainprog)
				val -= val - ppd->cpspec->ibsymsnap;
			val -= ppd->cpspec->ibsymdelta;
			FUNC11(dd, cr_ibsymbolerr, val);
		}
		if (ppd->cpspec->iblnkerrdelta || ppd->cpspec->ibdeltainprog) {
			val = FUNC6(dd, cr_iblinkerrrecov);
			if (ppd->cpspec->ibdeltainprog)
				val -= val - ppd->cpspec->iblnkerrsnap;
			val -= ppd->cpspec->iblnkerrdelta;
			FUNC11(dd, cr_iblinkerrrecov, val);
		}

		/* and disable counter writes */
		FUNC5(dd, kr_hwdiagctrl, diagc);
	}
	FUNC4(ppd, 0, QLOGIC_IB_IBCC_LINKINITCMD_DISABLE);

	FUNC8(&ppd->lflags_lock, flags);
	ppd->lflags &= ~QIBL_IB_AUTONEG_INPROG;
	FUNC9(&ppd->lflags_lock, flags);
	FUNC10(&ppd->cpspec->autoneg_wait);
	FUNC1(&ppd->cpspec->autoneg_work);

	FUNC7(ppd->dd);
	val = FUNC3(ppd->dd, kr_xgxs_cfg);
	val |= QLOGIC_IB_XGXS_RESET;
	FUNC5(ppd->dd, kr_xgxs_cfg, val);
}