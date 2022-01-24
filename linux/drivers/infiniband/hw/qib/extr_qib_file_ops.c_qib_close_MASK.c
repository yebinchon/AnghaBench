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
struct qib_filedata {int rec_cpu_num; int subctxt; scalar_t__ pq; struct qib_ctxtdata* rcd; } ;
struct qib_devdata {int /*<<< orphan*/  freectxts; scalar_t__ pageshadow; int /*<<< orphan*/  (* f_clear_tids ) (struct qib_devdata*,struct qib_ctxtdata*) ;int /*<<< orphan*/  (* f_rcvctrl ) (int /*<<< orphan*/ ,int,unsigned int) ;scalar_t__ kregbase; int /*<<< orphan*/  uctxt_lock; int /*<<< orphan*/ ** rcd; } ;
struct qib_ctxtdata {int active_slaves; unsigned int ctxt; int /*<<< orphan*/  piocnt; int /*<<< orphan*/  pio_base; int /*<<< orphan*/  ppd; scalar_t__ flag; scalar_t__ pionowait; scalar_t__ rcvnowait; scalar_t__ piowait_to; scalar_t__ rcvwait_to; scalar_t__ pid; scalar_t__* subpid; scalar_t__ cnt; struct qib_devdata* dd; } ;
struct inode {int dummy; } ;
struct file {struct qib_filedata* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sps_ctxts; } ;

/* Variables and functions */
 int QIB_RCVCTRL_CTXT_DIS ; 
 int QIB_RCVCTRL_INTRAVAIL_DIS ; 
 int /*<<< orphan*/  TXCHK_CHG_TYPE_KERN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_filedata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_ctxtdata*,struct qib_devdata*) ; 
 int /*<<< orphan*/  qib_cpulist ; 
 int /*<<< orphan*/  FUNC6 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct qib_devdata*,struct qib_ctxtdata*) ; 
 int /*<<< orphan*/  qib_mutex ; 
 TYPE_1__ qib_stats ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct qib_devdata*,struct qib_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC15 (struct qib_ctxtdata*) ; 

__attribute__((used)) static int FUNC16(struct inode *in, struct file *fp)
{
	struct qib_filedata *fd;
	struct qib_ctxtdata *rcd;
	struct qib_devdata *dd;
	unsigned long flags;
	unsigned ctxt;

	FUNC2(&qib_mutex);

	fd = fp->private_data;
	fp->private_data = NULL;
	rcd = fd->rcd;
	if (!rcd) {
		FUNC3(&qib_mutex);
		goto bail;
	}

	dd = rcd->dd;

	/* ensure all pio buffer writes in progress are flushed */
	FUNC7();

	/* drain user sdma queue */
	if (fd->pq) {
		FUNC10(rcd->ppd, fd->pq);
		FUNC9(fd->pq);
	}

	if (fd->rec_cpu_num != -1)
		FUNC0(fd->rec_cpu_num, qib_cpulist);

	if (--rcd->cnt) {
		/*
		 * XXX If the master closes the context before the slave(s),
		 * revoke the mmap for the eager receive queue so
		 * the slave(s) don't wait for receive data forever.
		 */
		rcd->active_slaves &= ~(1 << fd->subctxt);
		rcd->subpid[fd->subctxt] = 0;
		FUNC3(&qib_mutex);
		goto bail;
	}

	/* early; no interrupt users after this */
	FUNC11(&dd->uctxt_lock, flags);
	ctxt = rcd->ctxt;
	dd->rcd[ctxt] = NULL;
	rcd->pid = 0;
	FUNC12(&dd->uctxt_lock, flags);

	if (rcd->rcvwait_to || rcd->piowait_to ||
	    rcd->rcvnowait || rcd->pionowait) {
		rcd->rcvwait_to = 0;
		rcd->piowait_to = 0;
		rcd->rcvnowait = 0;
		rcd->pionowait = 0;
	}
	if (rcd->flag)
		rcd->flag = 0;

	if (dd->kregbase) {
		/* atomically clear receive enable ctxt and intr avail. */
		dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_CTXT_DIS |
				  QIB_RCVCTRL_INTRAVAIL_DIS, ctxt);

		/* clean up the pkeys for this ctxt user */
		FUNC5(rcd, dd);
		FUNC6(dd, rcd->pio_base, rcd->piocnt);
		FUNC4(dd, rcd->pio_base,
				       rcd->piocnt, TXCHK_CHG_TYPE_KERN, NULL);

		dd->f_clear_tids(dd, rcd);

		if (dd->pageshadow)
			FUNC15(rcd);
		qib_stats.sps_ctxts--;
		dd->freectxts++;
	}

	FUNC3(&qib_mutex);
	FUNC8(dd, rcd); /* after releasing the mutex */

bail:
	FUNC1(fd);
	return 0;
}