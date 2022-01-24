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
struct poll_table_struct {int dummy; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int /*<<< orphan*/  uctxt_lock; } ;
struct hfi1_ctxtdata {scalar_t__ urgent; scalar_t__ urgent_poll; int /*<<< orphan*/  event_flags; int /*<<< orphan*/  wait; struct hfi1_devdata* dd; } ;
struct file {struct hfi1_filedata* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  HFI1_CTXT_WAITING_URG ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *fp,
				struct poll_table_struct *pt)
{
	struct hfi1_filedata *fd = fp->private_data;
	struct hfi1_ctxtdata *uctxt = fd->uctxt;
	struct hfi1_devdata *dd = uctxt->dd;
	__poll_t pollflag;

	FUNC0(fp, &uctxt->wait, pt);

	FUNC2(&dd->uctxt_lock);
	if (uctxt->urgent != uctxt->urgent_poll) {
		pollflag = EPOLLIN | EPOLLRDNORM;
		uctxt->urgent_poll = uctxt->urgent;
	} else {
		pollflag = 0;
		FUNC1(HFI1_CTXT_WAITING_URG, &uctxt->event_flags);
	}
	FUNC3(&dd->uctxt_lock);

	return pollflag;
}