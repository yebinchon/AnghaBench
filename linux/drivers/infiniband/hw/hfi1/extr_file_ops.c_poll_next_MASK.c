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
struct hfi1_ctxtdata {int /*<<< orphan*/  event_flags; int /*<<< orphan*/  wait; struct hfi1_devdata* dd; } ;
struct file {struct hfi1_filedata* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  HFI1_CTXT_WAITING_RCV ; 
 int /*<<< orphan*/  HFI1_RCVCTRL_INTRAVAIL_ENB ; 
 scalar_t__ FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *fp,
			      struct poll_table_struct *pt)
{
	struct hfi1_filedata *fd = fp->private_data;
	struct hfi1_ctxtdata *uctxt = fd->uctxt;
	struct hfi1_devdata *dd = uctxt->dd;
	__poll_t pollflag;

	FUNC2(fp, &uctxt->wait, pt);

	FUNC4(&dd->uctxt_lock);
	if (FUNC0(uctxt)) {
		FUNC3(HFI1_CTXT_WAITING_RCV, &uctxt->event_flags);
		FUNC1(dd, HFI1_RCVCTRL_INTRAVAIL_ENB, uctxt);
		pollflag = 0;
	} else {
		pollflag = EPOLLIN | EPOLLRDNORM;
	}
	FUNC5(&dd->uctxt_lock);

	return pollflag;
}