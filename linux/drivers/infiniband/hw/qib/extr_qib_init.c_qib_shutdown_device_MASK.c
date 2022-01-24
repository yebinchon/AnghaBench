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
struct qib_pportdata {int lflags; int* statusp; int /*<<< orphan*/ * qib_wq; int /*<<< orphan*/  lflags_lock; } ;
struct qib_devdata {int flags; unsigned int num_pports; int /*<<< orphan*/  (* f_quiet_serdes ) (struct qib_pportdata*) ;int /*<<< orphan*/  (* f_sendctrl ) (struct qib_pportdata*,int) ;int /*<<< orphan*/  (* f_setextled ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;struct qib_pportdata* pport; int /*<<< orphan*/  (* f_rcvctrl ) (struct qib_pportdata*,int,int) ;int /*<<< orphan*/  (* f_set_intr_state ) (struct qib_devdata*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int QIBL_LINKACTIVE ; 
 int QIBL_LINKARMED ; 
 int QIBL_LINKDOWN ; 
 int QIBL_LINKINIT ; 
 int QIBL_LINKV ; 
 int QIB_HAS_SEND_DMA ; 
 int QIB_INITTED ; 
 int QIB_RCVCTRL_CTXT_DIS ; 
 int QIB_RCVCTRL_INTRAVAIL_DIS ; 
 int QIB_RCVCTRL_PKEY_ENB ; 
 int QIB_RCVCTRL_TAILUPD_DIS ; 
 int QIB_SENDCTRL_AVAIL_DIS ; 
 int QIB_SENDCTRL_CLEAR ; 
 int QIB_SENDCTRL_SEND_DIS ; 
 int QIB_SHUTDOWN ; 
 int QIB_STATUS_IB_CONF ; 
 int QIB_STATUS_IB_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct qib_devdata *dd)
{
	struct qib_pportdata *ppd;
	unsigned pidx;

	if (dd->flags & QIB_SHUTDOWN)
		return;
	dd->flags |= QIB_SHUTDOWN;

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;

		FUNC3(&ppd->lflags_lock);
		ppd->lflags &= ~(QIBL_LINKDOWN | QIBL_LINKINIT |
				 QIBL_LINKARMED | QIBL_LINKACTIVE |
				 QIBL_LINKV);
		FUNC4(&ppd->lflags_lock);
		*ppd->statusp &= ~(QIB_STATUS_IB_CONF | QIB_STATUS_IB_READY);
	}
	dd->flags &= ~QIB_INITTED;

	/* mask interrupts, but not errors */
	dd->f_set_intr_state(dd, 0);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		dd->f_rcvctrl(ppd, QIB_RCVCTRL_TAILUPD_DIS |
				   QIB_RCVCTRL_CTXT_DIS |
				   QIB_RCVCTRL_INTRAVAIL_DIS |
				   QIB_RCVCTRL_PKEY_ENB, -1);
		/*
		 * Gracefully stop all sends allowing any in progress to
		 * trickle out first.
		 */
		dd->f_sendctrl(ppd, QIB_SENDCTRL_CLEAR);
	}

	/*
	 * Enough for anything that's going to trickle out to have actually
	 * done so.
	 */
	FUNC11(20);

	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		dd->f_setextled(ppd, 0); /* make sure LEDs are off */

		if (dd->flags & QIB_HAS_SEND_DMA)
			FUNC2(ppd);

		dd->f_sendctrl(ppd, QIB_SENDCTRL_AVAIL_DIS |
				    QIB_SENDCTRL_SEND_DIS);
		/*
		 * Clear SerdesEnable.
		 * We can't count on interrupts since we are stopping.
		 */
		dd->f_quiet_serdes(ppd);

		if (ppd->qib_wq) {
			FUNC0(ppd->qib_wq);
			ppd->qib_wq = NULL;
		}
		FUNC1(ppd);
	}

}