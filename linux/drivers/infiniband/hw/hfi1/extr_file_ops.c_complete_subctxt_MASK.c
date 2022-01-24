#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hfi1_filedata {TYPE_2__* uctxt; TYPE_1__* dd; int /*<<< orphan*/  subctxt; int /*<<< orphan*/  rec_cpu_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  in_use_ctxts; int /*<<< orphan*/  numa_id; int /*<<< orphan*/  event_flags; int /*<<< orphan*/  wait; } ;
struct TYPE_4__ {int /*<<< orphan*/  uctxt_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HFI1_CTXT_BASE_FAILED ; 
 int /*<<< orphan*/  HFI1_CTXT_BASE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct hfi1_filedata*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct hfi1_filedata *fd)
{
	int ret;
	unsigned long flags;

	/*
	 * sub-context info can only be set up after the base context
	 * has been completed.
	 */
	ret = FUNC7(
		fd->uctxt->wait,
		!FUNC6(HFI1_CTXT_BASE_UNINIT, &fd->uctxt->event_flags));

	if (FUNC6(HFI1_CTXT_BASE_FAILED, &fd->uctxt->event_flags))
		ret = -ENOMEM;

	/* Finish the sub-context init */
	if (!ret) {
		fd->rec_cpu_num = FUNC1(fd->uctxt->numa_id);
		ret = FUNC3(fd, fd->uctxt);
	}

	if (ret) {
		FUNC4(&fd->dd->uctxt_lock, flags);
		FUNC0(fd->subctxt, fd->uctxt->in_use_ctxts);
		FUNC5(&fd->dd->uctxt_lock, flags);
		FUNC2(fd->uctxt);
		fd->uctxt = NULL;
	}

	return ret;
}