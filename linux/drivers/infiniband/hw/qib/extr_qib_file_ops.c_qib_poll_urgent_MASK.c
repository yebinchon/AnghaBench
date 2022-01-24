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
struct qib_devdata {int /*<<< orphan*/  uctxt_lock; } ;
struct qib_ctxtdata {scalar_t__ urgent; scalar_t__ urgent_poll; int /*<<< orphan*/  flag; int /*<<< orphan*/  wait; struct qib_devdata* dd; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  QIB_CTXT_WAITING_URG ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct qib_ctxtdata *rcd,
				    struct file *fp,
				    struct poll_table_struct *pt)
{
	struct qib_devdata *dd = rcd->dd;
	__poll_t pollflag;

	FUNC0(fp, &rcd->wait, pt);

	FUNC2(&dd->uctxt_lock);
	if (rcd->urgent != rcd->urgent_poll) {
		pollflag = EPOLLIN | EPOLLRDNORM;
		rcd->urgent_poll = rcd->urgent;
	} else {
		pollflag = 0;
		FUNC1(QIB_CTXT_WAITING_URG, &rcd->flag);
	}
	FUNC3(&dd->uctxt_lock);

	return pollflag;
}